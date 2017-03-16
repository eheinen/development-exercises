# To execute the code just open your terminal and navigate to this file directory and type:
# irb -r ./solved_exercise_03.rb

require 'yaml'

class Curiosity
    MSG_NO_CURIOSITIES = "That's all folks!".freeze

    def initialize
        load_curiosities
        list_categories
    end

    def add_curiosity(_category, _curiosity)
        _cat = get_category_by_id(_category)
        @@curiosities[_cat] = @@curiosities[_cat].merge({ (@@curiosities[_cat].length + 1) => _curiosity })
        @@curiosities_file[_cat] = @@curiosities_file[_cat].merge({ (@@curiosities_file[_cat].length + 1) => _curiosity })
        output = YAML.dump @@curiosities_file
        File.write("curiosities.yml", output)
    end

    def i_am_curious(_category)
        if _category.class.to_s != 'Fixnum'
            puts 'Please, select the number of a curiosity'
            list_categories
        end
        _category = get_category_by_id(_category)
        _list_curiosities = @@curiosities[_category]
        _total_categories = _list_curiosities.length
        if _total_categories > 0
            _curiosity = _list_curiosities[_total_categories]
            _list_curiosities.delete(_total_categories)
            return _curiosity
        else
            return MSG_NO_CURIOSITIES
          end
    end

    private

    def get_category_by_id(_id)
        @@categories[_id]
    end

    def list_categories
        puts "\n==================================="
        puts '= Categories:'
        puts '==================================='
        @@categories.each do |_cat|
            puts '  ' + _cat[0].to_s + ': ' + _cat[1]
        end
        puts "===================================\n\n"
    end

    def load_curiosities
        @@categories = {}
        @@curiosities_file = YAML.load_file('curiosities.yml')
        @@curiosities = YAML.load_file('curiosities.yml')
        @@curiosities.keys.each_with_index do |_cat, _index|
            @@categories[_index + 1] = _cat
        end
    end
end

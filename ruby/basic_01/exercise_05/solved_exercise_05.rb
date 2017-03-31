def calculate_bmi(weight, height)
  bmi = (weight / (height ** 2)).round(2)
  classification = get_classification(bmi)
  sub_classification = get_subclassification(bmi)

  puts 'BMI: ' + bmi.to_s
  puts 'Classification: ' + classification
  puts 'Sub Classification: ' + sub_classification

  get_healthy_instructions(bmi, weight, height)

end

# Using Case and When
def get_classification(bmi)
  case
  when bmi < 18.5
    return 'Underweight'
  when bmi >= 18.5 && bmi < 25
    return 'Normal Range'
  when bmi >= 25 && bmi < 30
    return 'Overweight'
  else
    return 'Obese'
  end
end

# Using If, Elsif and Else
def get_subclassification(bmi)
  if bmi < 16
    return 'Severe Thinness'
  elsif bmi >= 16 && bmi < 17
    return 'Moderate Thinness'
  elsif bmi >= 17 && bmi < 18.50
    return 'Mild Thinness'
  elsif bmi >= 18.5 && bmi < 25
    return 'Normal'
  elsif bmi >= 25 && bmi < 30
    return 'Pre-obese'
  elsif bmi >= 30 && bmi < 35
    return 'Obese class I'
  elsif bmi >= 35 && bmi < 40
    return 'Obese class II'
  else
    return 'Obese class III'
  end
end

def get_healthy_instructions(bmi, weight, height)
  min_normal_range = 18.5
  max_normal_range = 24.99
  mid_normal_range = 21.74
  points_to_lose = 0
  weight_to_lose = 0

  best_weight = (mid_normal_range * (height ** 2)).ceil

  if bmi < min_normal_range
    puts 'Points to get: ' + (min_normal_range - bmi).round(2).to_s
    puts 'Weight to get: ' + (best_weight - weight).ceil.to_s + ' kg'
  elsif bmi > max_normal_range
    puts 'Points to lose: ' + (bmi - max_normal_range).round(2).to_s
    puts 'Weight to lose: ' + (weight - best_weight).ceil.to_s + ' kg'
   end

  puts 'Best weight for you: ' + best_weight.to_s + ' kg'
end


calculate_bmi 75, 1.73
calculate_bmi 45, 1.73

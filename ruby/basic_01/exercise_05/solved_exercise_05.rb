def calculate_bmi(weight, height)
  bmi = weight / (height ** 2)
  classification = get_classification(bmi)
  sub_classification = get_subclassification(bmi)

  puts 'BMI: ' + bmi.to_s
  puts 'Classification: ' + classification
  puts 'Sub Classification: ' + sub_classification

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

puts "Body Mass Index (BMI) Categories"
puts "- Severe Thinness < 16"
puts "- Moderate Thinness 16-17"
puts "- Mild Thinness 17-18.5"
puts "- Normal 18.5-25"
puts "- Overweight 25-30"
puts "- Obese Class I 30-35"
puts "- Obese Class II 35-40"
puts "- Obese Class III >40"
puts
puts "Body Mass Index (BMI) Calculator"
print "Height(cm): "
height = gets.chomp.to_f
print "Weight(kg): "
weight = gets.chomp.to_f
bmi = (weight / (height/100) ** 2).round(2)
puts "BMI = #{bmi}"
result = case bmi
when 0..16
  "Severe Thinness"
when 16..17
  "Moderate Thinness"
when 17..18.5
  "Mild Thinness"
when 18.5..25
  "Normal"
when 25..30
  "Overweight"
when 30..35
  "Obese Class I"
when 35..40
  "Obese Class II"
else
  "Obese Class III"
end
puts "Your classification is: #{result}"
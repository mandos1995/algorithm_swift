let w = Double(readLine()!)!
let h = Double(readLine()!)!
let bmi = w / (h * h)
if bmi > 25 { print("Overweight") }
else if bmi >= 18.5 && bmi <= 25 { print("Normal weight") }
else { print("Underweight") }

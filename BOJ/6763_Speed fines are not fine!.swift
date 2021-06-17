let rule = Int(readLine()!)!
let speed = Int(readLine()!)!
let limit = speed - rule
if limit < 1{
    print("Congratulations, you are within the speed limit!")
} else if limit > 0 && limit < 21{
    print("You are speeding and your fine is $100.")
} else if limit > 20 && limit < 31{
    print("You are speeding and your fine is $270.")
} else{
    print("You are speeding and your fine is $500.")
}

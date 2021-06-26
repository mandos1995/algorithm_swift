let input1 = Int(readLine()!)!
let input2 = Int(readLine()!)!

if input1 <= 50 && input2 <= 10 {
    print("White")
} else if input2 >= 30 {
    print("Red")
} else {
    print("Yellow")
}

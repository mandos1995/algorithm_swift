let n = Int(readLine()!)!
for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    let name = input[0], score = Int(input[1])!
    var grade = ""
    switch score {
    case 97...100:
        grade = "A+"
    case 90...96:
        grade = "A"
    case 87...89:
        grade = "B+"
    case 80...86:
        grade = "B"
    case 77...79:
        grade = "C+"
    case 70...76:
        grade = "C"
    case 67...69:
        grade = "D+"
    case 60...66:
        grade = "D"
    default:
        grade = "F"
    }
    print(name, grade)
    
}

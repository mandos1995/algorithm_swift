func solution() {
    let input = readLine()!.split(separator: " ").map { Double($0)! }
    let height = input[0] / 100, weight = input[1]
    let bmi = weight / (height * height)
    switch height * 100 {
    case 0..<140.1:
        print(6)
    case 140.1..<146:
        print(5)
    case 146..<159:
        print(4)
    case 159..<161:
        (16.0..<35.0) ~= bmi ? print(3) : print(4)
    case 161..<204:
        if (20..<25) ~= bmi {
            print(1)
        } else if (18.5..<20) ~= bmi || (25..<30) ~= bmi {
            print(2)
        } else if (16.0..<18.5) ~= bmi || (30..<35) ~= bmi {
            print(3)
        } else {
            print(4)
        }
    case 204...:
        print(4)
    default:
        fatalError()
    }
}

let n = Int(readLine()!)!
for _ in 0..<n {
    solution()
}

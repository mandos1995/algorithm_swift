while true {
    var input = readLine()!.split(separator: " ").map { Int($0)! }
    if input.reduce(0, +) == 0 {
        break
    }
    input.sort(by: >)
    if input[0] >= input[1] + input[2] {
        print("Invalid")
    } else {
        let setTriangle = Set(input)
        switch setTriangle.count {
        case 1:
            print("Equilateral")
        case 2:
            print("Isosceles")
        default:
            print("Scalene")
        }
    }
}

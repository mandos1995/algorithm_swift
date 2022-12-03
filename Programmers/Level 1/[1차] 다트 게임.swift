func solution(_ dartResult:String) -> Int {
    var stack: [Int] = []
    let dart = dartResult.map { $0 }
    for (index, score) in dart.enumerated() {
        if score.isNumber {
            stack.append(Int(String(score))!)
            if Int(String(score))! == 0 {
                if index != 0 && dart[index - 1].isNumber {
                    stack.removeLast()
                    stack.removeLast()
                    stack.append(10)
                }
            }
        } else {
            switch score {
            case "S":
                continue
            case "D":
                if !stack.isEmpty {
                    var pop = stack.removeLast()
                    pop = pop * pop
                    stack.append(pop)
                }
            case "T":
                if !stack.isEmpty {
                    var pop = stack.removeLast()
                    pop = pop * pop * pop
                    stack.append(pop)
                }
            case "*":
                if stack.count > 1 {
                    let pop1 = stack.removeLast() * 2
                    let pop2 = stack.removeLast() * 2
                    stack.append(pop2)
                    stack.append(pop1)
                } else {
                    if !stack.isEmpty {
                        let pop = stack.removeLast() * 2
                        stack.append(pop)
                    }
                }
            case "#":
                if !stack.isEmpty {
                    let pop = stack.removeLast() * -1
                    stack.append(pop)
                }
            default:
                continue
            }
        }
    }
    return stack.reduce(0, +)
}

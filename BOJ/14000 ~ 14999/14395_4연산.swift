enum OperType: Int {
    case mul, plus, minus, div
    
    var symbol: String {
        switch self {
        case .mul:
            return "*"
        case .plus:
            return "+"
        case .minus:
            return "-"
        case .div:
            return "/"
        }
    }
    
    func cal(n: Int) -> Int {
        switch self {
        case .mul:
            return n * n
        case .plus:
            return n + n
        case .minus:
            return n - n
        case .div:
            return n / n
        }
    }
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
let s = input[0], t = input[1]

var visited = Set<Int>()

var queue = [(s, "")]
var index = 0
var answer = "-1"

while queue.count > index {
    let current = queue[index].0
    let oper = queue[index].1
    visited.insert(current)
    
    if current == t {
        answer = oper.isEmpty ? "0" : oper
        break
    }
    
    for i in 0..<4 {
        let operType = OperType(rawValue: i)!
        let next = operType.cal(n: current)
        if operType == .div && s == 0 {
            continue
        }
        if !visited.contains(next) && 1...1_000_000_000 ~= next {
            visited.insert(next)
            queue.append((next, oper + operType.symbol))
        }
    }
    index += 1
}

print(answer)

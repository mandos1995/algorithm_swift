let start = Int(readLine()!)!
let end = Int(readLine()!)!

func isDecimal(_ n: Int) -> Bool {
    if n == 1 {
        return false
    }
    
    for i in 2..<n {
        if n % i == 0 {
            return false
        }
    }
    return true

}
var answer: [Int] = []

for i in start...end {
    if isDecimal(i) {
        answer.append(i)
    }
}

if answer.isEmpty {
    print(-1)
} else {
    print(answer.reduce(0, +))
    print(answer[0])
}

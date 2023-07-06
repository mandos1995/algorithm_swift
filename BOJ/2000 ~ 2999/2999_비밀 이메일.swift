let message = readLine()!
let n = message.count
var r = 0, c = 0

for i in 1...n {
    if n % i == 0 {
        if i <= n / i {
            r = i
            c = n / i
        }
    }
}

var answer = [[String]](repeating: [], count: r)

for (index, m) in message.enumerated() {
    answer[index % r].append(String(m))
}

for r in 0..<r {
    for c in 0..<c {
        print(answer[r][c], terminator: "")
    }
}

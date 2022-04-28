let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
var circle = [String](repeating: "?", count: n)
var idx = 0
var isFail = false
for _ in 0..<k {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let i = Int(input[0])!, alpha = input[1]
    idx += i
    idx %= n
    if idx == 0 {
        idx = n
    }
    if circle[idx - 1] != alpha && circle[idx - 1] != "?" {
        isFail = true
    }
    circle[idx - 1] = alpha
    
}

for i in 0..<n - 1 {
    for j in i + 1..<n {
        if circle[i] == "?" || circle[j] == "?" {
            continue
        }
        if circle[i] == circle[j] {
            isFail = true
        }
    }
}

if isFail {
    print("!")
} else {
    let prev = circle[0..<idx].reversed().reduce("", +)
    let next = circle[idx..<n].reversed().reduce("", +)
    print(prev + next)
}

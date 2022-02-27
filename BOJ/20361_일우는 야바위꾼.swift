let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], x = input[1], k = input[2]
var cup = [Int](repeating: 0, count: n)
for i in 0..<n {
    cup[i] = i + 1
}

for _ in 0..<k {
    let input = readLine()!.split(separator: " ").map { Int($0)! - 1 }
    let temp = cup[input[0]]
    cup[input[0]] = cup[input[1]]
    cup[input[1]] = temp
}
print(cup.firstIndex(of: x)! + 1)

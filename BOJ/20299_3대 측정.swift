let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1], l = input[2]
var vip: [[Int]] = []
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    if input.reduce(0, +) >= k && input.min()! >= l {
        vip.append(input)
    }
}
print(vip.count)
vip.flatMap { $0 }.forEach { print($0, terminator: " ") }

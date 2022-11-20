let input = readLine()!.split(separator: " ").map { Int($0)! }
let (w, n, p) = (input[0], input[1], input[2])

let punchHeight = readLine()!.split(separator: " ").map { Int($0)! }
var count = 0
for i in 0..<p {
    if w <= punchHeight[i] && n >= punchHeight[i] {
        count += 1
    }
}
print(count)

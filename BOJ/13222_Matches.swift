let input = readLine()!.split(separator: " ").map { Int($0)! }
let t = input[0], w = input[1], h = input[2]

for _ in 0..<t {
    let input = Int(readLine()!)!
    if w * w + h * h >= input * input {
        print("YES")
    } else {
        print("NO")
    }
}

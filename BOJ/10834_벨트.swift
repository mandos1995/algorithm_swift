let t = Int(readLine()!)!
var belt: Int = 1
var direction: Int = 0

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    belt = belt / input[0] * input[1]
    direction += input[2]
}
print(direction % 2, belt)

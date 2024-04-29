let t = Int(readLine()!)!
var maxY = Int.max
var answer = (0, 0)
for _ in 0..<t { 
    let input = readLine()!.split { $0 == " " }.map { Int($0)! }
    let x = input[0], y = input[1]
    if y < maxY {
        maxY = y
        answer.0 = x
        answer.1 = y
    }
}
print(answer.0, answer.1)

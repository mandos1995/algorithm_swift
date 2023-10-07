let c = Double(readLine()!)!
var answer: Double = 0
for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { Double($0)! }
    let w = input[0], l = input[1]
    answer += (w * l)
}
print(answer * c)

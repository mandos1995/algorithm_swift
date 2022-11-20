let n = Int(readLine()!)!
var car = Int(readLine()!)!
var result = car
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    car = car + input[0] - input[1]
    result = max(car, result)
    if car < 0 {
        result = 0
        break
    }
}
print(result)

let n = Int(readLine()!)!
var foods: [(s: Int, b: Int)] = []
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    foods.append((input[0], input[1]))
}
var answer = Int.max
func makeFood(total: Int, count: Int, s: Int, b: Int) {
    if total == n {
        if count != 0 {
            answer = min(answer, abs(s - b))
        }
        return
    }
    
    makeFood(total: total + 1, count: count, s: s, b: b)
    makeFood(total: total + 1, count: count + 1, s: foods[total].s * s, b: foods[total].b + b)
}

makeFood(total: 0, count: 0, s: 1, b: 0)
print(answer)

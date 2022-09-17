let n = Int(readLine()!)!
var t: [(Int, Int)] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    t.append((input[0], input[1]))
}

var answer = 0

func solution(day: Int, price: Int, index: Int) {
    if day > n - 1 {
        answer = max(answer, price)
        return
    }
    
    solution(day: day + 1, price: price, index: index + 1)
    
    if day + t[index].0 <= n {
        solution(day: day + t[index].0, price: price + t[index].1, index: day + t[index].0)
    }
}

solution(day: 0, price: 0, index: 0)
print(answer)

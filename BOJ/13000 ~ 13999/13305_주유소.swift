let n = Int(readLine()!)!
let distance = readLine()!.split(separator: " ").map { Int($0)! }
let price = readLine()!.split(separator: " ").map { Int($0)! }
var answer = 0
var minPrice = price[0]

for i in 0..<n - 1 {
    if minPrice > price[i] {
        minPrice = price[i]
    }
    answer += minPrice * distance[i]
}

print(answer)

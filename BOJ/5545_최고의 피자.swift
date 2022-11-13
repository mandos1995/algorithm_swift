let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], b = input[1]
let c = Int(readLine()!)!
var price: [Int] = []

for _ in 0..<n {
    price.append(Int(readLine()!)!)
}

price = price.sorted(by: >)

var d = c
var answer = d / a

for (index, price) in price.enumerated() {
    d += price
    let currentPrice = a + (b * (index + 1))
    if d / currentPrice >= answer {
        answer = d / currentPrice
    } else {
        break
    }
    
}

print(answer)

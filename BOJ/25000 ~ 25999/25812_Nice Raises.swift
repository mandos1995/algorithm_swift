let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], r = input[1]
var prices = [0, 0]
for _ in 0..<n {
    let price = Int(readLine()!)!
    if price > r {
        prices[0] += 1
        continue
    }
    
    if price < r {
        prices[1] += 1
        continue
    }
}

if prices[0] > prices[1] {
    print(2)
} else if prices[0] < prices[1] {
    print(1)
} else {
    print(0)
}

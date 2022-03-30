let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var price: [Int] = []

for _ in 0..<n {
    price.append(Int(readLine()!)!)
}


func condition(x: Int) -> Bool {
    var money = 0
    var count = 0
    for p in price {
        if money >= p {
            money -= p
        } else {
            money = x
            count += 1
            money -= p
        }
    }
    return count <= m
}

var start = price.max()!
var end = price.reduce(0, +)

while start <= end {
    let mid = (start + end) / 2
    if condition(x: mid) {
        end = mid - 1
    } else {
        start = mid + 1
    }
}

print(start)

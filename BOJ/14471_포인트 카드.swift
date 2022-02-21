let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var price: [Int] = []
var count = 0
var result = 0
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let prize = input[0], blank = input[1]
    if prize - blank >= 0 {
        count += 1
        continue
    } else {
        price.append((blank - prize) / 2)
    }
}

while count != m - 1 {
    result += price.remove(at: price.firstIndex(of: price.min()!)!)
    count += 1
}
print(result)

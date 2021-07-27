let input = readLine()!.split(separator: " ").map { Double($0)! }
let seven25Price = input[0] / input[1] * 1000
var minPrice = seven25Price
let t = Int(readLine()!)!
for _ in 0..<t {
    let nextInput = readLine()!.split(separator: " ").map { Double($0)! }
    let price = nextInput[0] / nextInput[1] * 1000
    minPrice = min(minPrice, price)
}
print(minPrice)

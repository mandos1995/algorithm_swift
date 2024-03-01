let input = readLine()!.split(separator: " ").map { Int($0)! }
let b = input[0], c = input[1], d = input[2]
let burger = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)
let side = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)
let beverage = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)
let answer = (burger + side + beverage).reduce(0, +)
var discount = 0

for i in 0..<[b, c, d].min()! {
    discount += (burger[i] + side[i] + beverage[i]) / 10
}

print(answer)
print(answer - discount)

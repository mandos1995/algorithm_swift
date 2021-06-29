let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
var money = input[1]
var moneys = [Int]()
var count = 0

for _ in 0..<n{
    let m = Int(readLine()!)!
    if m <= money{
        moneys.append(m)
    }
}
moneys.sort(by: >)
for coin in moneys{
    count += money / coin
    money = money % coin
}
print(count)

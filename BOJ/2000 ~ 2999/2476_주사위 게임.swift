let n = Int(readLine()!)!
var price = [Int](repeating: 0, count: n)
for _ in 0..<n{
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let dice1 = input[0]
    let dice2 = input[1]
    let dice3 = input[2]
    var money = 0

    if dice1 == dice2 && dice1 == dice3 {
        money = 10000 + dice3 * 1000
        price.append(money)
    } else if dice1 == dice2 {
        money = 1000 + dice1 * 100
        price.append(money)
    } else if dice2 == dice3 {
        money = 1000 + dice2 * 100
        price.append(money)
    } else if dice1 == dice3 {
        money = 1000 + dice1 * 100
        price.append(money)
    } else {
        money = input.max()! * 100
        price.append(money)
    }
}
print(price.max()!)

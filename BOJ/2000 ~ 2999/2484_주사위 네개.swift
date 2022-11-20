let n = Int(readLine()!)!
var priceArray = [Int]()
for _ in 0..<n {
    var input = readLine()!.split(separator: " ").map { Int($0)! }
    input.sort()
    let dice1 = input[0]
    let dice2 = input[1]
    let dice3 = input[2]
    let dice4 = input[3]
    var price = 0
    input.sort()
    if Set(input).count == 1 {
        price = dice1 * 5000 + 50000
    } else if dice1 == dice2 && dice1 == dice3 {
        price = dice1 * 1000 + 10000
    } else if dice2 == dice3 && dice2 == dice4 {
        price = dice2 * 1000 + 10000
    } else if dice1 == dice2 && dice3 == dice4{
        price = dice1 * 500 + dice3 * 500 + 2000
    } else if dice1 == dice2{
        price = dice1 * 100 + 1000
    } else if dice3 == dice4{
        price = dice3 * 100 + 1000
    } else if dice2 == dice3{
        price = dice2 * 100 + 1000
    } else {
        price = dice4 * 100
    }
    priceArray.append(price)
}
print(priceArray.max()!)

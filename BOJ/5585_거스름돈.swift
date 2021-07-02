let input = Int(readLine()!)!
let coin_value = [500, 100, 50, 10, 5, 1]
var receive_coin = 1000 - input
var count = 0
for coin in coin_value {
    count += receive_coin / coin
    receive_coin = receive_coin % coin
}
print(count)

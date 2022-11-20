let input = Int(readLine()!)!
for _ in 0..<input{
    var coin = Int(readLine()!)!
    let coin_value = [25, 10, 5, 1]
    var coin_count = [0, 0, 0, 0]
    for i in 0..<coin_value.count {
        coin_count[i] = coin / coin_value[i]
        coin = coin % coin_value[i]
    }
    for i in 0..<coin_count.count {
        print(coin_count[i], terminator: " ")
    }
}

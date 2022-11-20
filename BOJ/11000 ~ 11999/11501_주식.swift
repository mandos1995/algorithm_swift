for _ in 0..<Int(readLine()!)! {
    let t = Int(readLine()!)!
    let stockPrice = readLine()!.split(separator: " ").map { Int(String($0))! }
    var profit = 0
    var maxPrice = 0
    for i in (0..<t).reversed() {
        if stockPrice[i] > maxPrice {
            maxPrice = stockPrice[i]
        } else {
            profit += maxPrice - stockPrice[i]
        }
    }
    print(profit)
}

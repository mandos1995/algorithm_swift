let n = Int(readLine()!)!
for _ in 0 ..< n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var price = 0
    switch input[0] {
    case 1:
        price += 5000000
    case 2...3:
        price += 3000000
    case 4...6:
        price += 2000000
    case 7...10:
        price += 500000
    case 11...15:
        price += 300000
    case 16...21:
        price += 100000
    default:
        price += 0
    }
    
    switch input[1] {
    case 1:
        price += 5120000
    case 2...3:
        price += 2560000
    case 4...7:
        price += 1280000
    case 8...15:
        price += 640000
    case 16...31:
        price += 320000
    default:
        price += 0
    }
    print(price)
}

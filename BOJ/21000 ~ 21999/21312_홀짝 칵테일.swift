func isOdd(_ n: Int) -> Bool {
    return n % 2 == 1
}

let drinks = readLine()!.split(separator: " ").map { Int($0)! }
var result = 1
var count = 0

drinks.forEach {
    if isOdd($0) {
        count += 1
        result *= $0
    }
}

count == 0 ? print(drinks.reduce(1, *)) : print(result)

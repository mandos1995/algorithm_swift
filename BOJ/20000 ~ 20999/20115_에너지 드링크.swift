let n = Int(readLine()!)!
var drinks = readLine()!.split(separator: " ").map { Double($0)! }.sorted(by: <)
var answer = drinks.removeLast()

while !drinks.isEmpty {
    let removeDrink = drinks.removeLast()
    answer += (removeDrink / 2)
}
print(answer)

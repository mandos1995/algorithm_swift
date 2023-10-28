let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let cost = Double(input[1])
var allTotal: Double = 0
var total: Double = 0
var bedroom: Double = 0
for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    let area = Double(input[0])!
    let t = String(input[1])
    if t == "balcony" {
        total += area / 2
    } else {
        if t == "bedroom" { bedroom += area }
        total += area
    }
    allTotal += area
}
print(Int(allTotal))
print(Int(bedroom))
print(total * cost)

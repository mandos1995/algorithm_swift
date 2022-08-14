var result: [Double] = []
var snackName = ["S", "N", "U"]
for _ in 0..<3 {
    let input = readLine()!.split(separator: " ").map { Double($0)! }
    let price = (input[0] * 10 >= 5000) ? input[0] * 10 - 500 : input[0] * 10, weight = input[1] * 10
    result.append(weight / price)
}

print(snackName[result.firstIndex(of: result.max()!)!])

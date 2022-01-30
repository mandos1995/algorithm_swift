let inputData = readLine()!.map { $0 }
let alpha = inputData.filter { !$0.isNumber }.sorted(by: <).map { String($0) }.joined()
let number = String(inputData.filter { $0.isNumber }.map { Int(String($0))! }.reduce(0, +))
let result = alpha + number
print(result)

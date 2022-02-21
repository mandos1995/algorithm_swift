var binaryNumber = readLine()!.split(separator: " ").map { String($0) }.sorted { $0.count > $1.count }

for _ in 0..<binaryNumber[0].count - binaryNumber[1].count {
    binaryNumber[1] = "0" + binaryNumber[1]
}

let firstNumber = binaryNumber[0].map { String($0) }
let secondNumber = binaryNumber[1].map { String($0) }
var result = ""
var step = 0
for i in (0..<firstNumber.count).reversed() {
    var total = Int(firstNumber[i])! + Int(secondNumber[i])! + step
    if total > 1 {
        step = 1
        total -= 2
    } else {
        step = 0
    }
    
    result = "\(total)" + result
}
result = step == 1 ? "1" + result : result
result = !result.contains("1") ? "0" : result
var idx = 0
let zeroRemove = result.map { String($0) }
var isOne = false
while !isOne {
    if idx == zeroRemove.count {
        break
    }
    if zeroRemove[idx] == "0" {
        idx += 1
    } else {
        isOne = true
        break
    }
}

result = isOne == true ? zeroRemove[idx...result.count - 1].reduce("", +) : result
print(result)

let input = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)
let a = String(input[0]).map { $0 }
let maxDigit = a.count
let b = (String(repeating: "0", count: maxDigit - "\(input[1])".count) + String(input[1])).map { $0 }
var answer = ""
for i in 0..<maxDigit {
    answer += String(Int(String(a[i]))! + Int(String(b[i]))!)
}
print(answer)

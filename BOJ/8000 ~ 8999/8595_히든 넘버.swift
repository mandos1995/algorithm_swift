let n = Int(readLine()!)!
let s = readLine()!.map { $0 }
var numbers: [String] = []
var number = ""
for i in 0..<s.count {
    if s[i].isNumber {
        number.append(s[i])
    } else {
        numbers.append(number)
        number.removeAll()
    }
    if s[i].isNumber && i == s.count - 1 {
        numbers.append(number)
    }
}

print(numbers.filter { $0.count <= 6 }.compactMap { Int($0) }.reduce(0, +))

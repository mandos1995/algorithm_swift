let n = Int(readLine()!)!
var dict: [Character: Int] = [:]
for i in 65...90 {
    dict[Character(UnicodeScalar(i)!)] = 0
}
let string = readLine()!
for str in string {
    dict[str]! += 1
}
print(dict.filter { ["H", "I", "A", "R", "C"].contains($0.key) }.values.min()!)

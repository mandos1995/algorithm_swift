let t = Int(readLine()!)!
var name: [String] = []
var age: [Int] = []
for _ in 0..<t {
    let input = readLine()!.split(separator: " ")
    name.append(String(input[0]))
    let old = Int(input[1])! + Int(input[2])! * 31 + Int(input[3])! * 31 * 12
    age.append(old)
}
let idx1 = age.firstIndex(of: age.max()!)!
let idx2 = age.firstIndex(of: age.min()!)!
print(name[idx1])
print(name[idx2])

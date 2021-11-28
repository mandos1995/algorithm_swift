let n = Int(readLine()!)!
var nameScoreDict: [String: Int] = [:]
for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    let name = String(input[0])
    let score = Int(input[1]) ?? 0
    nameScoreDict[name] = score
}
var result = nameScoreDict.sorted { $0.value > $1.value }

for student in result {
    print(student.key, terminator: " ")
}

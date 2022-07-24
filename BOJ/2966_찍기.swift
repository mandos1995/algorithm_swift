let n = Int(readLine()!)!
let answer = readLine()!.map { $0 }
let answer1: [Character] = ["A", "B", "C"]
let answer2: [Character] = ["B", "A", "B", "C"]
let answer3: [Character] = ["C", "C", "A", "A", "B", "B"]

let id1 = [[Character]](repeating: answer1, count: 34).flatMap { $0 }
let id2 = [[Character]](repeating: answer2, count: 25).flatMap { $0 }
let id3 = [[Character]](repeating: answer3, count: 17).flatMap { $0 }
var answerDict: [String: Int] = ["Adrian": 0, "Bruno": 0, "Goran": 0]

for i in 0..<n {
    if answer[i] == id1[i] {
        answerDict["Adrian"]! += 1
    }
    if answer[i] == id2[i] {
        answerDict["Bruno"]! += 1
    }
    if answer[i] == id3[i] {
        answerDict["Goran"]! += 1
    }
}

let maxValue = answerDict.sorted { $0.value > $1.value }[0].value
let maxValueDinct = answerDict.filter { $0.value == maxValue }.sorted { $0.key < $1.key }

print(maxValue)
for (key, _) in maxValueDinct {
    print(key)
}

let input = readLine()!.split(separator: " ").map { String($0) }
let a = input[0], b = input[1]
var answer = [[String]](repeating: [String](repeating: ".", count: a.count), count: b.count)
var aIdx = 0
var bIdx = 0
mainLoop: for (aIndex, a) in a.enumerated() {
    for (bIndex, b) in b.enumerated() {
        if a == b {
            aIdx = aIndex
            bIdx = bIndex
            break mainLoop
        }
    }
}

answer[bIdx] = a.map { String($0) }
let bArray = b.map { String($0) }
for i in 0..<b.count {
    answer[i][aIdx] = bArray[i]
}

for a in answer {
    print(a.reduce("", +))
}

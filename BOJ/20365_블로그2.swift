let n = Int(readLine()!)!
let color = readLine()!.map { $0 }
let blueCount = color.filter { $0 == "B" }.count
let redCount = n - blueCount

func getContinuityCount(c: Character) -> Int {
    var answer = 0
    var isContinue = false
    for color in color {
        if color == c {
            if !isContinue {
                answer += 1
                isContinue = true
            }
        } else {
            isContinue = false
        }
    }
    return answer
}
var drawingColor = getContinuityCount(c: "R") > getContinuityCount(c: "B") ? [Character](repeating: "R", count: n) : [Character](repeating: "B", count: n)
var answer = 1
var isContinue = false

while color != drawingColor {
    for i in 0..<n {
        if color[i] != drawingColor[i] {
            drawingColor[i] = color[i]
            if !isContinue {
                answer += 1
            }
            isContinue = true
            continue
        }
        isContinue = false
    }
}
print(answer)

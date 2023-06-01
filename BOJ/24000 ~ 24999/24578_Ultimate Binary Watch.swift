let nums = readLine()!.map { Int(String($0))! }
var answer = [[String]](repeating: [], count: 4)

func convertNumberToLED(n: Int) {
    for i in 0...3 {
        answer[i].append(n & (1 << i) != 0 ? "*" : ".")
    }
}

func whiteSpaceAppend() {
    for i in 0...3 {
        answer[i].append(" ")
    }
}

for i in 0...3 {
    convertNumberToLED(n: nums[i])
    if i == 1 {
        whiteSpaceAppend()
    }
}

answer.reversed().forEach { print($0.joined(separator: " "))}

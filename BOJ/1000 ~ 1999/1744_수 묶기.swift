let n = Int(readLine()!)!
var positiveNumbers: [Int] = []
var negativeNumbers: [Int] = []
for _ in 0..<n {
    let n = Int(readLine()!)!
    if n > 0 {
        positiveNumbers.append(n)
    } else {
        negativeNumbers.append(n)
    }
}

positiveNumbers.sort { $0 > $1 }
negativeNumbers.sort { $0 < $1 }

var answer = 0
if positiveNumbers.count > 0 {
    for i in stride(from: 0, to: positiveNumbers.count - 1, by: 2) {
        if positiveNumbers[i + 1] + positiveNumbers[i] < positiveNumbers[i + 1] * positiveNumbers[i] {
            answer += positiveNumbers[i + 1] * positiveNumbers[i]
        } else {
            answer += positiveNumbers[i + 1] + positiveNumbers[i]
        }
    }
    if positiveNumbers.count % 2 == 1 {
        answer += positiveNumbers.last!
    }
}

if negativeNumbers.count > 0 {
    for i in stride(from: 0, to: negativeNumbers.count - 1, by: 2) {
        if negativeNumbers[i + 1] + negativeNumbers[i] < negativeNumbers[i + 1] * negativeNumbers[i] {
            answer += negativeNumbers[i + 1] * negativeNumbers[i]
        } else {
            answer += negativeNumbers[i + 1] + negativeNumbers[i]
        }
    }
    if negativeNumbers.count % 2 == 1 {
        answer += negativeNumbers.last!
    }
}

print(answer)

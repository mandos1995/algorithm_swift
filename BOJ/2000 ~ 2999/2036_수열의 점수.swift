let n = Int(readLine()!)!
var nums: [Int] = []
for _ in 0..<n { nums.append(Int(readLine()!)!) }
var positiveNums = nums.filter { $0 > 1 }.sorted(by: <)
var negativeNums = nums.filter { $0 < 0 }.sorted(by: >)
var zeros = nums.filter { $0 == 0 }
var answer = nums.filter { $0 == 1 }.count

while !positiveNums.isEmpty {
    if positiveNums.count != 1 {
        let a = positiveNums.removeLast()
        let b = positiveNums.removeLast()
        answer += a * b
    } else {
        answer += positiveNums.removeLast()
    }
}

while !negativeNums.isEmpty {
    if negativeNums.count != 1 {
        let a = negativeNums.removeLast()
        let b = negativeNums.removeLast()
        answer += a * b
    } else {
        if zeros.isEmpty {
            answer += negativeNums.removeLast()
        } else {
            negativeNums.removeLast()
        }
    }
}

print(answer)

let n = Int(readLine()!)!
var maxLength = 0
var answerArray: [Int] = []
for i in 1...n {
    var array = [n, i]
    var num = n - i
    while num >= 0 {
        let newNum = array.last! - num
        array.append(num)
        num = newNum
    }
    if maxLength < array.count {
        maxLength = array.count
        answerArray = array
    }
}
print(maxLength)
print(answerArray.map { String($0) }.joined(separator: " "))

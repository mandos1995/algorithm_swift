let n = Int(readLine()!)!
var answer = 0
for i in 4...n {
    let num = String(i).map { String($0) }
    var isCorrectNumber = true
    for n in num {
        if ["1", "2", "3", "5", "6", "8", "9", "0"].contains(n) {
            isCorrectNumber = false
        }
    }
    if isCorrectNumber {
        answer = i
    }
    
}
print(answer)

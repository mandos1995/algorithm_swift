import Foundation
let str = readLine()!.map { Int(String($0))! }
var answer: [Int] = []
func backtracking(index: Int) {
    if index == str.count {
        var success = [Int](repeating: 0, count: answer.count)
        for i in 0..<answer.count {
            success[i] = i + 1
        }
        if answer.sorted(by: <) == success {
            answer.forEach {
                print($0, terminator: " ")
            }
            exit(0)
        }
        return
    }
    let num = str[index]
    
    if !answer.contains(num) {
        answer.append(num)
        backtracking(index: index + 1)
        answer.removeLast()
    }
    
    if index + 1 < str.count {
        let newNum = str[index] * 10 + str[index + 1]
        if newNum < 51 && !answer.contains(newNum) {
            answer.append(newNum)
            backtracking(index: index + 2)
            answer.removeLast()
        }
    }
}
backtracking(index: 0)

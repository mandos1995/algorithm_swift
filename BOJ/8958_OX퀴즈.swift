import Foundation
let num = Int(readLine()!)!
for _ in 0..<num{
    let input = readLine()!
    var score = 0
    var score2 = 0
    for i in input{
        if i == "O"{
            score2 += 1
            score += score2
        } else {
            score2 = 0
        }
    }
    print(score)
}

var score = [Int]()
for _ in 0..<5{
    var num = Int(readLine()!)!
    if num < 40{
        num = 40
    }
    score.append(num)
}
var sum = 0
for i in 0..<5{
    sum += score[i]
}
print(sum/5)

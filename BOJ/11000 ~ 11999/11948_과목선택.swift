var exam1 = [Int]()
var exam2 = [Int]()
var sum = 0
for _ in 0..<4{
    exam1.append(Int(readLine()!)!)
}
for _ in 0..<2{
    exam2.append(Int(readLine()!)!)
}
exam1.remove(at: exam1.firstIndex(of: exam1.min()!)!)
for i in 0..<exam1.count{
    sum += exam1[i]
}
sum += exam2.max()!
print(sum)

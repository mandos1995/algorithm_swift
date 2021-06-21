let num = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{ Int($0)! }
var cnt = 0
for i in 0..<5{
    if num == input[i]{
        cnt += 1
    }
}
print(cnt)

let num = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int($0)! }
var cnt = 0
for i in 0..<5{
    if input[i] == num{
        cnt += 1
    }
}
print(cnt)

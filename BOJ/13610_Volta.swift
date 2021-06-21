let input = readLine()!.split(separator: " ").map{ Int($0)! }
let x = input[0]
let y = input[1]
var cnt = 1
while true{
    if y * cnt - x * cnt >= y{
        break
    }
    cnt += 1
}
print(cnt)

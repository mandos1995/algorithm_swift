let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
var chaneN = input[1]
var count = 1
while chaneN != n {
    if chaneN < n {
        count = 0
        break
    }
    if chaneN % 2 == 0 {
        chaneN /= 2
        count += 1
    } else if chaneN % 10 == 1 {
        chaneN /= 10
        count += 1
    } else {
        count = 0
        break
    }
}
count == 0 ? print(-1) : print(count)

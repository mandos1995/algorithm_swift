let input = readLine()!.split(separator: " ").map { Int($0)! }
var day = input[0]
var hour = input[1]
var min = input[2]
let startTime = 11 * 1440 + 11 * 60 + 11
let endTime = day * 1440 + hour * 60 + min
if startTime > endTime{
    print(-1)
} else {
    print(endTime - startTime)
}

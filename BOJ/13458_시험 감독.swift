let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int($0)! }
let people = readLine()!.split(separator: " ").map { Int($0)! }
var answer = 0
for num in nums {
    var total = num
    total -= people[0]
    answer += 1
    if total > 0 {
        answer += total % people[1] == 0 ? total / people[1] : total / people[1] + 1
    }
}
print(answer)

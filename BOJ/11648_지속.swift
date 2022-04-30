var num = readLine()!
var answer = 0
while num.count != 1 {
    let nums = num.map { Int(String($0))! }.reduce(1, *)
    num = String(nums)
    answer += 1
}
print(answer)

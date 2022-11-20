let input = readLine()!
var nums = input.map { Int(String($0))! }.sorted {$0 > $1}
var sum = nums.reduce(0, +)
let isFail = nums[nums.count - 1] != 0 || sum % 3 != 0

if isFail {
    print(-1)
} else {
    print(nums.map {String($0)}.joined() )
}

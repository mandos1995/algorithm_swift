let input = readLine()!.split(separator: " ").map{ Int($0)! }
let n = input[0]
let k = input[1]
var nums: [Int] = []

for i in 1...n {
    if n % i == 0 {
        nums.append(i)
    }
}
if nums.count < k {
    print(0)
} else {
    print(nums[k - 1])
}

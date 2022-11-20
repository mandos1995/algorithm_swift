let string = readLine()!
var nums = [Int](repeating: 0, count: 26)
for i in string {
    nums[Int(i.asciiValue!) - 97] += 1
}

for i in 0..<nums.count {
    print(nums[i],terminator: " ")
}

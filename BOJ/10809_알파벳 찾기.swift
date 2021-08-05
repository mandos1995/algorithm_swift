let string = readLine()!
var nums = [Int](repeating: -1, count: 26)
var j = 0
for i in string {
    if nums[Int(i.asciiValue!) - 97] == -1{
        nums[Int(i.asciiValue!) - 97] = j
    }
    j += 1
}

for i in 0..<nums.count {
    print(nums[i],terminator: " ")
}

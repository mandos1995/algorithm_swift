let nums = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
if nums[0] + nums[1] == nums[2] {
    print(1)
} else if nums[0] * nums[1] == nums[2] {
    print(2)
} else {
    print(3)
}

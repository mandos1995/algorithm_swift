let n = readLine()!.map { Int(String($0))! }
var count = n.count
var mid = count % 2 == 0 ? count / 2 - 1 : count / 2

var nums = count % 2 == 0 ? n[0...mid] + n[0...mid].reversed() : n[0...mid] + n[0..<mid].reversed()
if nums.map({ String($0) }).joined() > n.map({ String($0) }).joined() {
    print(nums.map({ String($0)}).joined())
} else {
    if nums[mid] == 9 {
        var step = 1
        nums[mid] = 0
        for i in (0..<mid).reversed() {
            nums[i] += step
            step = nums[i] / 10
            nums[i] %= 10
        }
        if step != 0 {
            nums.insert(1, at: 0)
        }
    } else {
        nums[mid] += 1
    }
    let isEven = nums.count % 2 == 0
    let midIndex = isEven ? nums.count / 2 - 1 : nums.count / 2
    let answer = isEven ? nums[0...midIndex] + nums[0...midIndex].reversed() : nums[0...midIndex] + nums[0..<midIndex].reversed()
    print(answer.map { String($0) }.joined())
}

var nums = readLine()!.split(separator: " ").map { String($0) }
func makeTargetNumber(nums: [String]) -> Int {
    var nums = nums
    var answer = Int(nums.reduce("", +))!
    for _ in 0..<4 {
        nums.append(nums.removeFirst())
        answer = min(answer, Int(nums.reduce("", +))!)
    }
    return answer
}

let targetNumber = makeTargetNumber(nums: nums)

var watchNums: Set<Int> = []

func makeWatchNums(index: Int, nums: String) {
    if index == 4 {
        watchNums.insert(makeTargetNumber(nums: nums.map { String($0) }))
        return
    }
    
    for i in 1...9 {
        makeWatchNums(index: index + 1, nums: nums + "\(i)")
    }
}


makeWatchNums(index: 0, nums: "")
print(watchNums.sorted(by: <).firstIndex(of: targetNumber)! + 1)

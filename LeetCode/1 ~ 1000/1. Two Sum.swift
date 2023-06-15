class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numDict: [Int: Int] = [:]
        let n = nums.count
        for i in 0..<n {
            let remain = target - nums[i]
            if numDict[remain] != nil {
                return [numDict[remain]!, i]
            }
            numDict[nums[i]] = i
        }
        return []
    }
}

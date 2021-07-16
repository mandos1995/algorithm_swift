let t = Int(readLine()!)!
var nums: [Int] = []

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    for i in 0..<input.count {
        if input[i] % 2 == 0 {
            nums.append(input[i])
        }
        
    }
    print(nums.reduce(0, +), nums.min()!)
    nums.removeAll()
}

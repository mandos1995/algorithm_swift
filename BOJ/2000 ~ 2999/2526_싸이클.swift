let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], p = input[1]
var num = n
var nums: [Int] = []

while true {
    num = num * n % p
    if nums.contains(num) {
        print(nums.count - nums.firstIndex(of: num)!)
        break
    }
    nums.append(num)
    
}

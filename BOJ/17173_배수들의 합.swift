let input = readLine()!.split(separator: " ").map { Int($0)! }
let num = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
var nums: [Int] = []

for i in 0..<input[1] {
    var j = 1
    while true {
        if num[i] * j > n {
            break
        } else {
            if !nums.contains(num[i] * j) {
                nums.append(num[i] * j)
            }
        }
        j += 1
    }
}
print(nums.reduce(0, +))

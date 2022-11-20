var array: [Int] = []
for i in 1...100 {
    array.append(i * i)
}
var nums: [Int] = []
let n = Int(readLine()!)!
let m = Int(readLine()!)!

for i in n...m {
    if array.contains(i) {
        nums.append(i)
    }
}

if nums.isEmpty {
    print(-1)
} else {
    print(nums.reduce(0, +))
    print(nums.min()!)
}

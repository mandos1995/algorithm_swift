let n = Int(readLine()!)!
var nums = [Int]()

for i in 1...n {
    if n % i == 0 {
        nums.append(i)
    }
}
print(nums.reduce(0, +))

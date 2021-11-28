let n = Int(readLine()!)!
var nums: [Int] = []
for _ in 0..<n {
    nums.append(Int(readLine()!)!)
}
nums.sort{ $0 > $1 }

for num in nums {
    print(num, terminator:" ")
}

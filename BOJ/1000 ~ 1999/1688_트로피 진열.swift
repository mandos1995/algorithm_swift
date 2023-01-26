let n = Int(readLine()!)!
var trophies: [Int] = []
for _ in 0..<n {
    trophies.append(Int(readLine()!)!)
}
var leftCount = 0
var rightCount = 0
var leftMax = 0
var rightMax = 0

for trophy in trophies {
    if leftMax < trophy {
        leftCount += 1
        leftMax = trophy
    }
}

for trophy in trophies.reversed() {
    if rightMax < trophy {
        rightCount += 1
        rightMax = trophy
    }
}
print(leftCount)
print(rightCount)

let n = readLine()!
let half = n.count / 2
let startIdx = n.index(n.startIndex, offsetBy: 0)
let halfIdx = n.index(n.startIndex, offsetBy: half)
let endIdx = n.index(n.endIndex,offsetBy: -1)
var left = n[startIdx..<halfIdx]
var right = n[halfIdx...endIdx]
var leftSum = 0
var rightSum = 0

for i in left {
    leftSum += Int(String(i))!
}


for i in right {
    rightSum += Int(String(i))!
}

if leftSum == rightSum {
    print("LUCKY")
} else {
    print("READY")
}

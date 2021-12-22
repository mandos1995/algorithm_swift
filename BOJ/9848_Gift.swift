let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
var todayRecord = Int(readLine()!)!
var giftNum = 0
for _ in 0..<n - 1{
    let nextRecord = Int(readLine()!)!
    if todayRecord - nextRecord >= k {
        giftNum += 1
    }
    todayRecord = nextRecord
    
}
print(giftNum)

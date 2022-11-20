let input = readLine()!.split(separator: " ").map { Int($0)! }
let hot = input[0], base = input[1], half = input[2], hotNum = input[3], baseNum = input[4]
var price = 0
if hot + base > 2 * half {
    price = 2 * half * min(hotNum, baseNum)
    if hotNum >= baseNum {
        price += min((hotNum - baseNum) * hot, 2 * half * (hotNum - baseNum))
    } else {
        price += min((baseNum - hotNum) * base, 2 * half * (baseNum - hotNum))
    }
} else {
    price += hot * hotNum + base * baseNum
}

print(price)

let ALPHA = "abcdefghijklmnopqrstuvwxyz"

var alphaDict1: [Character: Int] = [:]
var alphaDict2: [Character: Int] = [:]
let str1 = readLine()!
let str2 = readLine()!

for alpha in ALPHA {
    alphaDict1[alpha] = 0
    alphaDict2[alpha] = 0
}

for str in str1 {
    alphaDict1[str]! += 1
}

for str in str2 {
    alphaDict2[str]! += 1
}
var answer = 0
for alpha in ALPHA {
    answer += abs(alphaDict1[alpha]! - alphaDict2[alpha]!)
}
print(answer)

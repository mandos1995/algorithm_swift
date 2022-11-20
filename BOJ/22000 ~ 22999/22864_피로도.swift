let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], b = input[1], c = input[2], m = input[3]
var burnOut = 0
var result = 0
if a > m {
    result = 0
} else {
    for _ in 1...24 {
        if !(burnOut + a > m) {
            burnOut += a
            result += b
        } else {
            burnOut -= c
            burnOut = burnOut < 0 ? 0 : burnOut
        }
    }
}
print(result)

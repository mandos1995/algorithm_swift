let input = readLine()!.split(separator: " ").map { Int($0)! }
let multitap = readLine()!.split(separator: " ").map { Int($0)! }
var result = 0
for i in 0..<input[1] {
    if multitap[i] % 2 == 0 {
        result += multitap[i] / 2
    } else {
        result += multitap[i] / 2 + 1
    }
}
if result >= input[0] {
    print("YES")
} else {
    print("NO")
}

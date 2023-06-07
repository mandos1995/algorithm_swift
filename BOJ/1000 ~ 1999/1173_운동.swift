let input = readLine()!.split(separator: " ").map { Int($0)! }
var N = input[0]
let m = input[1], M = input[2], T = input[3], R = input[4]

if m + T > M {
    print(-1)
} else {
    var value = m
    var time = 0
    while N != 0 {
        if value + T <= M {
            N -= 1
            value += T
        } else {
            value = max(value - R, m)
        }
        time += 1
    }
    print(time)
}

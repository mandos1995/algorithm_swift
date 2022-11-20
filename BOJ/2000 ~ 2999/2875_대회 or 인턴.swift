let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]
var k = input[2]
let maxTeam = min(n / 2, m)
let peopleNum = n + m
let rest = peopleNum - (maxTeam * 3)

if rest >= k {
    print(maxTeam)
} else {
    k = k - rest
    if k % 3 == 0 {
        print(maxTeam - (k / 3))
    } else {
        print(maxTeam - (k / 3) - 1)
    }
}

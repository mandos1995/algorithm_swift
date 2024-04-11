let c1 = readLine()!.split(separator: " ").map { Int($0)! }
let c2 = readLine()!.split(separator: " ").map { Int($0)! }
let c3 = readLine()!.split(separator: " ").map { Int($0)! }
var hp = Int(readLine()!)! - (c1[1] + c2[1] + c3[1])
var answer = 0
var c = [c1, c2, c3].sorted { $0[0] < $1[0] }
for i in 1...1000 * 5000 {
    if hp <= 0 {
        answer = i - 1
        break
    }
    for c in c {
        if i % c[0] == 0 { hp -= c[1] }
    }
}

print(answer)

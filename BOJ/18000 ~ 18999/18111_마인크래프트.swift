let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1], block = input[2]
var map = [[Int]]()
for _ in 0..<n {
    map.append(readLine()!.split(separator: " ").map { Int($0)! })
}

var height = 0
var result = Int.max

for i in 0..<257 {
    var max = 0
    var min = 0
    for j in 0..<n {
        for k in 0..<m {
            if map[j][k] < i {
                min += (i - map[j][k])
            } else {
                max += (map[j][k] - i)
            }
        }
    }
    let inventory = max + block
    if inventory < min {
        continue
    }
    let time = 2 * max + min
    if time <= result {
        result = time
        height = i
    }
}

print(result, height)

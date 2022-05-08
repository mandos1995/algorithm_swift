var manDict: [Int: Int] = [1: 0, 2: 0, 3: 0, 4: 0, 5: 0, 6: 0]
var womanDict: [Int: Int] = [1: 0, 2: 0, 3: 0, 4: 0, 5: 0, 6: 0]

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let s = input[0], y = input[1]
    if s == 0 {
        womanDict[y]! += 1
    } else {
        manDict[y]! += 1
    }
}

var answer = 0
for n in manDict.values {
    answer += n % k == 0 ? n / k : n / k + 1
}

for n in womanDict.values {
    answer += n % k == 0 ? n / k : n / k + 1
}
print(answer)

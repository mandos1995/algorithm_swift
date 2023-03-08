let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
var nations: [[Int]] = []

for _ in 0..<n {
    nations.append(readLine()!.split(separator: " ").map { Int($0)! })
}

nations = nations.sorted {
    if $0[1] == $1[1] {
        if $0[2] == $1[2] {
            return $0[3] > $1[3]
        }
        return $0[2] > $1[2]
    } else {
        return $0[1] > $1[1]
    }
}

var rank = 1
var temp = 1
for i in 0..<n - 1 {
    nations[i].append(rank)
    if nations[i][1...3] != nations[i + 1][1...3] {
        rank += temp
        temp = 1
    } else {
        temp += 1
    }
}

nations[n - 1].append(rank)

print(nations.first(where: {  $0[0] == k })!.last!)

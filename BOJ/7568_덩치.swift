let n = Int(readLine()!)!
var bulk: [(Int, Int)] = []
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let weight = input[0], height = input[1]
    bulk.append((weight, height))
}

for i in 0..<n {
    var rank = 1
    for j in 0..<n {
        if bulk[i].0 < bulk[j].0 && bulk[i].1 < bulk[j].1 {
            rank += 1
        }
    }
    print(rank, terminator: " ")
}

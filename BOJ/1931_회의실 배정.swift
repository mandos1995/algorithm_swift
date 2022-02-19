let n = Int(readLine()!)!
var time: [(Int, Int)] = []
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let start = input[0], end = input[1]
    time.append((start, end))
}
time.sort { $0.0 < $1.0 }
time.sort { $0.1 < $1.1 }
var count = 1
var endTime = time[0].1

for i in 1..<n {
    if endTime <= time[i].0 {
        count += 1
        endTime = time[i].1
    }
}

print(count)

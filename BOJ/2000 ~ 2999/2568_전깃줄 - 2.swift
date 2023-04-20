let n = Int(readLine()!)!
var lines: [(Int, Int)] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    lines.append((a, b))
}

lines.sort { $0.0 < $1.0 }

var LIS = [lines.first!]
var records = [0]

for i in 1..<n {
    if LIS.last!.1 < lines[i].1 {
        LIS.append(lines[i])
        records.append(LIS.count - 1)
        continue
    }
    
    var start = 0
    var end = LIS.count
    
    while start <= end {
        let mid = (start + end) / 2
        
        if LIS[mid].1 < lines[i].1 {
            start = mid + 1
        } else {
            end = mid - 1
        }
    }
    LIS[start] = lines[i]
    records.append(start)
}

var removed: [Int] = []
var find = LIS.count - 1

for i in (0..<n).reversed() {
    if find == records[i] {
        find -= 1
    } else {
        removed.append(lines[i].0)
    }
}
var answer = "\(n - LIS.count)\n"
removed.sorted().forEach {
    answer += "\($0)\n"
}

print(answer)

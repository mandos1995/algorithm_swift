let n = Int(readLine()!)!
var counts: [Int] = [0, 0, 0, 0]
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1], c = input[2]
    counts[0] += b
    counts[2] += c
    if b > c {
        counts[1] += a
    } else {
        counts[3] += a
    }
}

if counts[0] > counts[2] && counts[1] > counts[3] {
    print(1)
} else if counts[0] < counts[2] && counts[1] < counts[3] {
    print(2)
} else {
    print(0)
}

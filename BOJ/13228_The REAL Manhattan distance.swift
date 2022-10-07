let n = Int(readLine()!)!

func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let x1 = input[0], y1 = input[1], floor1 = input[2], x2 = input[3], y2 = input[4], floor2 = input[5]
    let answer = floor1 + abs(x1 - x2) + abs(y1 - y2) + floor2
    print(answer)
}

for _ in 0..<n {
    solution()
}

var count = 0

for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { Double($0)! }
    let y = input[0], x = input[1], d = input[2], w = input[3]
    if (y > 56 || x > 45 || d > 25) && y + x + d > 125 || w > 7 {
        print(0)
        continue
    }
    print(1)
    count += 1
}

print(count)

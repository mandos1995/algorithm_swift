var str = readLine()!.map { $0 }

for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let i = input[0], j = input[1]
    str.swapAt(i, j)
}

print(String(str))

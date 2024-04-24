var answer = 0
for _ in 0..<4 {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let isStair = input[0] == "Stair", count = Int(input[1])!
    answer += (isStair ? 17 : 21) * count
}
print(answer)

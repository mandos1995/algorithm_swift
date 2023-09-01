while let input = readLine()?.split(separator: " ").map { Int($0)! }, input != [0, 0] {
    let a = input[0], b = input[1]
    let n = max((a - b) / 2 - (a - b) % 2, 0)
    let t = a - b <= 1 ? 0 : (a - b) % 2
    print(n ,t)
}

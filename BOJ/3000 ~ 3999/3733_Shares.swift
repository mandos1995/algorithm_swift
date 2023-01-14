while let input = readLine()?.split(separator: " ").map({ Int($0)! }) {
    let n = input[0], s = input[1]
    print(s / (n + 1))
}

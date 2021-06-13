while let line = readLine() {
    let input = line.split(separator: " ").map {Int($0)!}
    print(input[0] + input[1])
}

for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ")
    print(input[0] == input[1] ? "OK" : "ERROR")
}

for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ")
    print(input[0], Int(input[1], radix: 8) ?? 0, Int(input[1], radix: 10)!, Int(input[1], radix: 16)!)
}

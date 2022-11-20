for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { String($0) }
    print("god" + input[1...].reduce("", +))
}

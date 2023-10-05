for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { Double($0)! }
    let a = input[0], b = input[1], c = input[2], d = input[3]
    if b >= 10.5 && c >= 7.5 && d >= 12 && b + c + d >= 55 {
        print(Int(a), Int(b + c + d), "PASS")
    } else {
        print(Int(a), Int(b + c + d), "FAIL")
    }
}


for _ in 0..<Int(readLine()!)! {
    let a = readLine()!.map { $0 }
    print(a.firstIndex(of: "D") ?? a.count)
}

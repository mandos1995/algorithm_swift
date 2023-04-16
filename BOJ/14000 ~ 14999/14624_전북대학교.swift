let n = Int(readLine()!)!
if n % 2 == 0 {
    print("I LOVE CBNU")
} else {
    print(String(repeating: "*", count: n))
    for i in 0..<n / 2 + 1 {
        if i == 0 {
            print(String(repeating: " ", count: n / 2) + "*")
            continue
        }
        print(String(repeating: " ", count: n / 2 - i) + "*" + String(repeating: " ", count: 2 * i - 1) + "*")
    }
}

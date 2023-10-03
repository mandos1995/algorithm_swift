let n = Int(readLine()!)!
for i in 1...n {
    print(i, terminator: " ")
    if i % 6 == 0 || i == n {
        print("Go!", terminator: " ")
    }
}

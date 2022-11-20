let t = Int(readLine()!)!
for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var count = 0
    for a in 1..<input[0] {
        for b in a + 1..<input[0] {
            if ((a * a + b * b + input[1]) % (a * b)) == 0{
                count += 1
            }
        }
    }
    print(count)
}

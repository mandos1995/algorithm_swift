let input = readLine()!.split(separator: " ").map { Int($0)! }
let m = input[0], seed = input[1], x1 = input[2], x2 = input[3]

main: for a in 0..<m {
    for c in 0..<m {
        if (a * seed + c) % m == x1 {
            if (a * x1 + c) % m == x2 {
                print(a, c)
                break main
            }
        }
    }
}

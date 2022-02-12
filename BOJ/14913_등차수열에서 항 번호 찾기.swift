let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], d = input[1], k = input[2]

if (k - a) % d != 0 || (k - a) / d < 0 {
    print("X")
} else {
    print((k - a) / d + 1)
}

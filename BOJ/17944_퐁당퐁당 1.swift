let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], t = input[1]
let p = t % (n * 4 - 2)

if 1...2 * n ~= p {
    print(p)
} else if p == 0 {
    print(2)
} else {
    print(4 * n - p)
}

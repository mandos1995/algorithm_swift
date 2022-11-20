let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], b = input[1], c = input[2]
if a == b && b == c {
    print("*")
} else if a == b {
    print("C")
} else if a == c {
    print("B")
} else if b == c {
    print("A")
}

var input = readLine()!.split(separator: " ").map { Int($0)! }
input.sort()
let d1 = input[1] - input[0]
let d2 = input[2] - input[1]
if d1 == d2 {
    print(input[2] + d1)
} else {
    if d1 < d2 {
        print(input[1] + d1)
    } else {
        print(input[1] - d2)
    }
}

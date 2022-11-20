let input = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
let num1 = input[0], num2 = input[1]
if num1 == num2 {
    print(0)
} else {
    print(num2 - num1 - 1)
    for i in num1 + 1 ..< num2 {
        print(i, terminator: " ")
    }
}

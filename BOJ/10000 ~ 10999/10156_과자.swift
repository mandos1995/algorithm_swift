let input = readLine()!.split(separator: " ").map { Int($0)! }
let cookie = input[0]
let num = input[1]
let money = input[2]

if (cookie * num) > money {
    print((cookie * num) - money)
} else {
    print(0)
}

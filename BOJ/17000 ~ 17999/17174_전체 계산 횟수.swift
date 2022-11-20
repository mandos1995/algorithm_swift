let input = readLine()!.split(separator: " ").map { Int($0)! }
var n = input[0]
var m = input[1]
var count = n
while true {
    if n < 1{
        break
    }
    n = n / m
    count += n
}
print(count)

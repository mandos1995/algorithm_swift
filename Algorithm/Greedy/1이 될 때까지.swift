let input = readLine()!.split(separator: " ").map { Int($0)! }
var n = input[0]
let k = input[1]
var count = 0
while n != 1 {
    if n % k == 0{
        n = n / k
        count += 1
    } else {
        n = n - 1
        count += 1
    }
}
print(count)

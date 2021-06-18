let input = readLine()!.split(separator: " ").map { Int($0)! }
var k = input[0]
let w = input[1]
let m = input[2]
var count = 0
while k < w {
    count += 1
    k += m
}
print(count)

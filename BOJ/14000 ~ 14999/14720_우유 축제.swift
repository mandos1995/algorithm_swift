let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int($0)! }
var i = 0
var j = 0
var count = 0
while n > i {
    if input[i] % 3 == 0 && count % 3 == 0{
        count += 1
    } else if input[i] % 3 == 1 && count % 3 == 1 {
        count += 1
    } else if input[i] % 3 == 2 && count % 3 == 2 {
        count += 1
    }
    i += 1
}
print(count)

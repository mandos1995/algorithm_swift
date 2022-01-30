let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
let j = Int(readLine()!)!
var size = m
var start = 1
var end = m
var basket = start...end

var count = 0
for _ in 0..<j {
    let apple = Int(readLine()!)!
    if basket.contains(apple) {
        continue
    } else {
        if end < apple {
            count += abs(apple - end)
            end = apple
            start = end - m + 1
        } else {
            count += abs(start - apple)
            start = apple
            end = start + m - 1
            
        }
        basket = start...end
    }
}
print(count)

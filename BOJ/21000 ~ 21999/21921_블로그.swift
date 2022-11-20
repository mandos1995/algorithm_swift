let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], x = input[1]
let array = readLine()!.split(separator: " ").map { Int($0)! }

var currentValue = array[0..<x].reduce(0, +)
var maxValue = currentValue
var count = 1

for i in 0..<n - x {
    currentValue = currentValue - array[i] + array[i + x]
    if currentValue > maxValue {
        maxValue = currentValue
        count = 1
        continue
    }
    
    if currentValue == maxValue {
        count += 1
        continue
    }
}

if maxValue == 0 {
    print("SAD")
} else {
    print(maxValue)
    print(count)
}

let num1 = readLine()!
let sign = readLine()!
let num2 = readLine()!
var result = "1"
let num1ZeroCount = num1.count - 1
let num2ZeroCount = num2.count - 1
let maxCount = max(num1ZeroCount, num2ZeroCount)
let minCount = min(num1ZeroCount, num2ZeroCount)

if sign == "+" {
    if num1.count == num2.count{
        result = "2"
        for _ in 0..<num1.count - 1 {
            result += "0"
        }
    } else {
        for _ in 0..<maxCount - minCount - 1 {
            result += "0"
        }
        if num1.count > num2.count {
            result += num2
        } else {
            result += num1
        }
    }
} else {
    if multy != 0 {
        for _ in 0..<num1.count + num2.count - 2 {
            result += "0"
        }
    } else {
        if num1.count > num2.count {
            result = num1
        } else {
            result = num2
        }
    }
}
print(result)

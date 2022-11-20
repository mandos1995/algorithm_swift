let input = readLine()!.split(separator: " ").map { String($0) }
let firstNum = Int(input[0])!
let firstOperation = input[1]
let secondNum = Int(input[2])!
let secondOperation = input[3]
let thirdNum = Int(input[4])!
var result1 = 0
var result2 = 0
switch firstOperation {
case "+":
    switch secondOperation {
    case "+":
        result1 = (firstNum + (secondNum + thirdNum))
    case "-":
        result1 = (firstNum + (secondNum - thirdNum))
    case "*":
        result1 = (firstNum + (secondNum * thirdNum))
    case "/":
        result1 = (firstNum + (secondNum / thirdNum))
    default:
        print()
    }
case "-":
    switch secondOperation {
    case "+":
        result1 = (firstNum - (secondNum + thirdNum))
    case "-":
        result1 = (firstNum - (secondNum - thirdNum))
    case "*":
        result1 = (firstNum - (secondNum * thirdNum))
    case "/":
        result1 = (firstNum - (secondNum / thirdNum))
    default:
        print()
    }
case "*":
    switch secondOperation {
    case "+":
        result1 = (firstNum * (secondNum + thirdNum))
    case "-":
        result1 = (firstNum * (secondNum - thirdNum))
    case "*":
        result1 = (firstNum * (secondNum * thirdNum))
    case "/":
        result1 = (firstNum * (secondNum / thirdNum))
    default:
        print()
    }
case "/":
    switch secondOperation {
    case "+":
        result1 = (firstNum / (secondNum + thirdNum))
    case "-":
        result1 = (firstNum / (secondNum - thirdNum))
    case "*":
        result1 = (firstNum / (secondNum * thirdNum))
    case "/":
        result1 = (firstNum / (secondNum / thirdNum))
    default:
        print()
    }
default:
    print()
}
switch firstOperation {
case "+":
    switch secondOperation {
    case "+":
        result2 = ((firstNum + secondNum) + thirdNum)
    case "-":
        result2 = ((firstNum + secondNum) - thirdNum)
    case "*":
        result2 = ((firstNum + secondNum) * thirdNum)
    case "/":
        result2 = ((firstNum + secondNum) / thirdNum)
    default:
        print()
    }
case "-":
    switch secondOperation {
    case "+":
        result2 = ((firstNum - secondNum) + thirdNum)
    case "-":
        result2 = ((firstNum - secondNum) - thirdNum)
    case "*":
        result2 = ((firstNum - secondNum) * thirdNum)
    case "/":
        result2 = ((firstNum - secondNum) / thirdNum)
    default:
        print()
    }
case "*":
    switch secondOperation {
    case "+":
        result2 = ((firstNum * secondNum) + thirdNum)
    case "-":
        result2 = ((firstNum * secondNum) - thirdNum)
    case "*":
        result2 = ((firstNum * secondNum) * thirdNum)
    case "/":
        result2 = ((firstNum * secondNum) / thirdNum)
    default:
        print()
    }
case "/":
    switch secondOperation {
    case "+":
        result2 = ((firstNum / secondNum) + thirdNum)
    case "-":
        result2 = ((firstNum / secondNum) - thirdNum)
    case "*":
        result2 = ((firstNum / secondNum) * thirdNum)
    case "/":
        result2 = ((firstNum / secondNum) / thirdNum)
    default:
        print()
    }
default:
    print()
}
print(min(result1, result2))
print(max(result1, result2))

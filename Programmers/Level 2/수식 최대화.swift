import Foundation

func solution(_ expression:String) -> Int64 {
    let priority: [[String]] = [["+", "-", "*"], ["+", "*", "-"], ["-", "+", "*"], ["-", "*", "+"], ["*", "+", "-"], ["*", "-", "+"]]
    var nums: [String] = []
    var oper: [String] = []
    var num = ""
    for e in expression {
        if e.isNumber {
            num += String(e)
        } else {
            nums.append(num)
            num = ""
            oper.append(String(e))
        }
    }
    nums.append(num)

    func getValue(_ nums: [String], _ oper: [String], _ priority: [String]) -> Int {
        var stack: [String] = []
        var nums = nums
        var oper = oper
        for i in 0..<3 {
            stack.removeAll()
            for index in 0..<oper.count {
                if stack.isEmpty {
                    stack.append(nums[index])
                    stack.append(oper[index])
                    continue
                }
                if stack.last! == priority[i] {
                    stack.removeLast()
                    let num = Int(stack.removeLast())!
                    let value = calculate(priority[i], num, Int(nums[index])!)
                    stack.append("\(value)")
                    stack.append(oper[index])
                    continue
                }
                stack.append(nums[index])
                stack.append(oper[index])
            }
            if !stack.isEmpty {
                if stack.last! == priority[i] {
                    stack.removeLast()
                    let num = Int(stack.removeLast())!
                    let value = calculate(priority[i], num, Int(nums.last!)!)
                    stack.append("\(value)")
                } else {
                    stack.append(nums.last!)
                }
            }
            nums.removeAll()
            oper.removeAll()
            for e in stack {
                if let _ = Int(e) {
                    nums.append(e)
                } else {
                    oper.append(e)
                }
            }
            
        }
        if stack.isEmpty {
            return 0
        } else {
            return abs(Int(stack.last!)!)
        }
    }
    var answer = 0
    for p in priority {
        answer = max(answer, getValue(nums, oper, p))
    }
    
    return Int64(answer)
}

func calculate(_ oper: String, _ num1: Int, _ num2: Int) -> Int {
    switch oper {
        case "*":
            return num1 * num2
        case "-":
            return num1 - num2
        case "+":
            return num1 + num2
        default:
            return 0
    }
}

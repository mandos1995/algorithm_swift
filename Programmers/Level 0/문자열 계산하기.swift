import Foundation

func solution(_ my_string:String) -> Int {
    let nums = my_string.split(separator: " ").compactMap { Int($0) }
    let oper = my_string.split(separator: " ").enumerated().filter { $0.offset % 2 == 1 }.map { $0.element }
    var answer = nums.first!
    
    for i in 1..<nums.count {
        answer = calculate(answer, nums[i], oper: String(oper[i - 1]))
    }
    
    return answer
}

func calculate(_ num1: Int, _ num2: Int, oper: String) -> Int {
    return oper == "+" ? num1 + num2 : num1 - num2
}

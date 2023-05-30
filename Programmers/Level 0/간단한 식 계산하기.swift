import Foundation

func solution(_ binomial:String) -> Int {
    let input = binomial.split(separator: " ").map { String($0) }
    let a = Int(input[0])!, oper = input[1], b = Int(input[2])!
    switch oper {
    case "+":
        return a + b
    case "-":
        return a - b
    default:
        return a * b
    }
    
}

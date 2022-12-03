import Foundation

func solution(_ s:String) -> Int {
    var answer = ""
    let string = s.map { $0 }
    var index = 0
    while index < string.count {
        if string[index].isNumber {
            answer += "\(string[index])"
            index += 1
            continue
        }
        switch string[index] {
        case "z":
            answer += "0"
            index += 4
        case "o":
            answer += "1"
            index += 3
        case "t":
            if index + 5 > string.count {
                answer += "2"
            } else {
                if String(string[index...index + 2]) == "two" {
                    answer += "2"
                    index += 3
                } else {
                    answer += "3"
                    index += 5
                }
            }
        case "f":
            if String(string[index...index + 3]) == "four" {
                answer += "4"
                index += 4
            } else {
                answer += "5"
                index += 4
            }
        case "s":
            if index + 5 > string.count {
                answer += "6"
                index += 3
            } else {
                if String(string[index...index + 2]) == "six" {
                    answer += "6"
                    index += 3
                } else {
                    answer += "7"
                    index += 5
                }
            }
        case "e":
            answer += "8"
            index += 5
        case "n":
            answer += "9"
            index += 4
        default:
            continue
        }
    }
    
    return Int(answer)!
}

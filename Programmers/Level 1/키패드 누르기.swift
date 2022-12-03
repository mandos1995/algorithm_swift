import Foundation

func getDistance(_ num: Int, target: Int) -> Int {
    if num == target {
        return 0
    }
    switch target {
    case 2:
        if num == 1 || num == 3 {
            return 1
        }
        if num == 4 || num == 6 {
            return 2
        }
        if num == 7 || num == 9 {
            return 3
        }
        if num == 10 || num == 12 {
            return 4
        }
        return (num - target) / 3
    case 5:
        if num == 1 || num == 3 {
            return 2
        }
        if num == 4 || num == 6 {
            return 1
        }
        if num == 7 || num == 9 {
            return 2
        }
        if num == 10 || num == 12 {
            return 3
        }
        return num < target ? 1 : (num - target) / 3
    case 8:
        if num == 1 || num == 3 {
            return 3
        }
        if num == 4 || num == 6 {
            return 2
        }
        if num == 7 || num == 9 {
            return 1
        }
        if num == 10 || num == 12 {
            return 2
        }
        return num < target ? (target - num) / 3 : 1
    case 11:
        if num == 1 || num == 3 {
            return 4
        }
        if num == 4 || num == 6 {
            return 3
        }
        if num == 7 || num == 9 {
            return 2
        }
        if num == 10 || num == 12 {
            return 1
        }
        return (target - num) / 3
    default:
        return 0
    }
    
}

func solution(_ numbers:[Int], _ hand:String) -> String {
    var answer = ""
    var left = 10
    var right = 12
    for num in numbers {
        let number = num == 0 ? 11 : num
        if number == 1 || number == 4 || number == 7 {
            left = number
            answer += "L"
            continue
        }
        
        if number == 3 || number == 6 || number == 9 {
            right = number
            answer += "R"
            continue
        }
        let leftDistance = getDistance(left, target: number)
        let rightDistance = getDistance(right, target: number)
        
        if leftDistance == rightDistance {
            if hand == "left" {
                left = number
                answer += "L"
            } else {
                right = number
                answer += "R"
            }
        } else if leftDistance > rightDistance {
            right = number
            answer += "R"
        } else {
            left = number
            answer += "L"
        }
        
    }
    return answer
}

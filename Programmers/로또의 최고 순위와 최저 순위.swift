import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var zeroCount = 0
    var winCount = 0
    var result = [Int]()
    for i in lottos {
        if i == 0 {
            zeroCount += 1
        }
        if win_nums.contains(i) {
            winCount += 1
        }
    }
    switch winCount + zeroCount {
    case 6:
        result.append(1)
    case 5:
        result.append(2)
    case 4:
        result.append(3)
    case 3:
        result.append(4)
    case 2:
        result.append(5)
    default:
        result.append(6)
    }
    
    switch winCount {
    case 6:
        result.append(1)
    case 5:
        result.append(2)
    case 4:
        result.append(3)
    case 3:
        result.append(4)
    case 2:
        result.append(5)
    default:
        result.append(6)
    }
    return result
}

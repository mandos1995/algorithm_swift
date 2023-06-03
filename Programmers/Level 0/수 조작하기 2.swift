import Foundation

func solution(_ numLog:[Int]) -> String {
    var result = ""
    for i in 0..<numLog.count - 1 {
        result += convertToString(numLog[i], numLog[i + 1])
    }
    return result
}

func convertToString(_ prev: Int, _ current: Int) -> String {
    if prev + 1 == current {
        return "w"
    }
    if prev - 1 == current {
        return "s"
    }
    if prev + 10 == current {
        return "d"
    }
    return "a"
}

import Foundation

enum Sequence {
    case arithmetic
    case geometric
}

func solution(_ common:[Int]) -> Int {
    let d = common[1] - common[0]
    let sequenceType: Sequence = d == common[2] - common[1] ? .arithmetic : .geometric
    
    switch sequenceType {
    case .arithmetic:
        return common.last! + d
    case .geometric:
        return common.last! * (common[1] / common[0])
    }
}

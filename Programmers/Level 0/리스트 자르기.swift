import Foundation

func solution(_ n:Int, _ slicer:[Int], _ numList:[Int]) -> [Int] {
    let (a, b, c) = (slicer[0], slicer[1], slicer[2])
    switch n {
    case 1:
        return Array(numList[0...b])
    case 2:
        return Array(numList[a...])
    case 3:
        return Array(numList[a...b])
    case 4:
        return Array(numList[a...b]).enumerated().filter { $0.offset % c == 0 }.map { $0.element }
    default:
        return []
    }
}

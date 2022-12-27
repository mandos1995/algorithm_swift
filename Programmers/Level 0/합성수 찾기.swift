import Foundation

func solution(_ n:Int) -> Int {
    return (1...n).filter { i in (1...i).filter { i % $0 == 0 }.count > 2 }.count
}

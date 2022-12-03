import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    return array.filter { $0 == n }.count
}

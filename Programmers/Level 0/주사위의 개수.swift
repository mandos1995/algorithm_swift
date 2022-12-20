import Foundation

func solution(_ box:[Int], _ n:Int) -> Int {
    return box.map { $0 / n }.reduce(1, *)
}

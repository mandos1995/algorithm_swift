import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    return numbers[(2 * (k - 1)) % numbers.count]
}

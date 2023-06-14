import Foundation

func solution(_ strArr:[String]) -> Int {
    return Dictionary(strArr.map { ($0.count, 1) }, uniquingKeysWith: +).values.max()!
}

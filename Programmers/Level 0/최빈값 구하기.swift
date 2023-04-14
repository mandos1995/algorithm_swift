import Foundation

func solution(_ array:[Int]) -> Int {
    let dict = Dictionary(array.map { ($0, 1) }, uniquingKeysWith: +)
    let maxValues = dict.filter { $0.value == dict.values.max()! }
    return maxValues.count > 1 ? -1 : maxValues.keys.first!
}

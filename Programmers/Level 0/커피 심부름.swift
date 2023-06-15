import Foundation

func solution(_ order:[String]) -> Int {
    return order.map { $0.contains("latte") ? 5000 : 4500 }.reduce(0, +)
}

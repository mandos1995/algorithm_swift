import Foundation

func solution(_ rank:[Int], _ attendance:[Bool]) -> Int {
    let ranked = zip(rank.enumerated(), attendance).filter { $0.1 }.sorted { $0.0.element < $1.0.element }.prefix(3)
    return ranked[0].0.offset * 10000 + ranked[1].0.offset * 100 + ranked[2].0.offset
}

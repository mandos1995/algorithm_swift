import Foundation

func solution(_ sides:[Int]) -> Int {
    var sides = sides.sorted { $0 > $1 }
    return (1...sides[0]).filter { $0 + sides[1] > sides[0] }.count + (sides[0] + 1...5000).filter { $0 < sides[0] + sides[1]}.count
}

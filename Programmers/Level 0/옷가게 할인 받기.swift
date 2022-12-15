import Foundation

func solution(_ price:Int) -> Int {
    return price >= 100_000 ? price >= 300_000 ? price >= 500_000 ? Int(Double(price) * 0.8) : Int(Double(price) * 0.9) : Int(Double(price) * 0.95) : price
}

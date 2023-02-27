import Foundation

func solution(_ dots:[[Int]]) -> Int {
    let x = dots.map { $0[0] }
    let y = dots.map { $0[1] }
    return (x.max()! - x.min()!) * (y.max()! - y.min()!)
}

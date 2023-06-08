import Foundation

func solution(_ date1:[Int], _ date2:[Int]) -> Int {
    let d1 = date1[0] * 360 + date1[1] * 30 + date1[2]
    let d2 = date2[0] * 360 + date2[1] * 30 + date2[2]
    return d1 < d2 ? 1 : 0
}

import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    let sortedSize = sizes.map { $0.sorted { $0 > $1 } }
    var maxWidth = 0
    var maxHegiht = 0
    sortedSize.forEach {
        if maxWidth < $0[0] {
            maxWidth = $0[0]
        }
        if maxHegiht < $0[1] {
            maxHegiht = $0[1]
        }
    }
    
    return maxWidth * maxHegiht
}

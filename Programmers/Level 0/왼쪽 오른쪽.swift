import Foundation

func solution(_ strList:[String]) -> [String] {
    let rIdx = strList.firstIndex(of: "r") ?? strList.count
    let lIdx = strList.firstIndex(of: "l") ?? strList.count
    print(rIdx, lIdx)
    if rIdx > lIdx {
        return Array(strList[0..<lIdx])
    }
    if lIdx > rIdx {
        return Array(strList[(rIdx + 1)...])
    }
    return []
}

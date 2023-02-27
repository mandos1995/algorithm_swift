import Foundation

func solution(_ spell:[String], _ dic:[String]) -> Int {
    for dic in dic {
        if Set(spell) == Set(dic.map { String($0) }) {
            return 1
        }
    }
    return 2
}

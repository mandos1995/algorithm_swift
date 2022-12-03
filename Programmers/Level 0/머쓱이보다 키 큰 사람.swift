import Foundation

func solution(_ array:[Int], _ height:Int) -> Int {
    return (array + [height]).sorted { $0 > $1 }.firstIndex(of: height)!
}

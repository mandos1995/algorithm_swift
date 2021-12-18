import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var losts = Array(Set(lost).subtracting(reserve)).sorted()
    var reserves = Array(Set(reserve).subtracting(lost)).sorted()
    
    for uniform in reserves {
        if losts.contains(uniform - 1) {
            losts.remove(at: losts.firstIndex(of: uniform - 1)!)
        } else if losts.contains(uniform + 1) {
            losts.remove(at: losts.firstIndex(of: uniform + 1)!)
        }
    }
    return n - losts.count
}

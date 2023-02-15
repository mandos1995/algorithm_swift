import Foundation

func solution(_ t:String, _ p:String) -> Int {
    let t = t.map { $0 }
    let splitCount = p.count
    var nums: [Int] = []
    
    for i in 0..<t.count - splitCount + 1 {
        let num = Int(String(t[i..<i + splitCount]))!
        nums.append(num)
    }
    
    return nums.filter { $0 <= Int(p)! }.count
}

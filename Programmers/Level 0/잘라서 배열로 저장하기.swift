import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    var result: [String] = []
    var myStr = my_str
    
    while !myStr.isEmpty {
        var split = ""
        for _ in 0..<n where !myStr.isEmpty {
            split.append(myStr.removeFirst())
        }
        result.append(split)
    }
    
    return result
}

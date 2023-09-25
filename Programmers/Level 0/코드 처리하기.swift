import Foundation

func solution(_ code:String) -> String {
    var mode = 0
    var ret = ""
    for (i, c) in code.enumerated() {
        if mode == 0 {
            if c != "1" && i % 2 == 0 {
                ret.append(c)
            }
            if c == "1" {
                mode = 1
            }
        } else {
            if c != "1" && i % 2 == 1 {
                ret.append(c)
            }
            if c == "1" {
                mode = 0
            }
        }
    }
    return ret.isEmpty ? "EMPTY" : ret
}

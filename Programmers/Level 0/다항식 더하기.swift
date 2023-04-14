import Foundation

func solution(_ polynomial:String) -> String {
    let p = polynomial.split { $0 == "+" }.map { String($0).trimmingCharacters(in: .whitespaces) }
    var x = 0
    var d = 0
    
    for p in p {
        if p.contains("x") {
            var temp = p
            temp.removeLast()
            x += Int(temp) ?? 1
        } else {
            d += Int(p)!
        }
    }
    if x == 0 {
        return "\(d)"
    } else if d == 0 {
        if x == 1 {
            return "x"
        }
        return "\(x)x"
    } else {
        if x == 1 {
            return "x + \(d)"
        }
        return "\(x)x + \(d)"
    }
}

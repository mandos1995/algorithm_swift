func solution(_ files:[String]) -> [String] {
    var array: [[String]] = []
    for (index, file) in files.enumerated() {
        var isHead = false
        var isNum = false
        var head = ""
        var number = ""
        var tail = ""
        for f in file {
            if !isHead && !f.isNumber {
                head += String(f)
                continue
            }
            if f.isNumber && !isNum {
                isHead = true
                number += String(f)
                continue
            }
            isNum = true
            tail += String(f)
        }
        array.append(["\(index)", head, number, tail])
    }

    array.sort {
        if $0[1].uppercased() == $1[1].uppercased() {
            if Int($0[2])! == Int($1[2]) {
                return Int($0[0])! < Int($1[0])!
            }
            return Int($0[2])! < Int($1[2])!
        }
        return $0[1].uppercased() < $1[1].uppercased()
    }
    var answer: [String] = []
    for arr in array {
        var ans = ""
        for (index, a) in arr.enumerated() {
            if index == 0 {
                continue
            }
            ans += "\(a)"
        }
        answer.append(ans)
    }
    return answer
}

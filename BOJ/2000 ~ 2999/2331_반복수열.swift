func pow(_ n: Int, _ p: Int) -> Int {
    var answer = 0
    for n in "\(n)".map({ Int(String($0))! }) {
        var i = 1
        for _ in 0..<p {
            i *= n
        }
        answer += i
    }
    return answer
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], p = input[1]
var array = [a]
var set: Set<Int> = [a]
var target = Int.max
while true {
    let n = array.last!
    let pow = pow(n, p)
    if set.contains(pow) {
        target = pow
        break
    }
    array.append(pow)
    set.insert(pow)
    
}

print(array.firstIndex(of: target)!)

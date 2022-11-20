let n = Int(readLine()!)!
var string = readLine()!.map { String($0) }
let dict: [String: String] = ["AA": "A", "AG": "C", "AC": "A", "AT": "G", "GA": "C", "GG": "G", "GC": "T", "GT": "A", "CA": "A", "CG": "T", "CC": "C", "CT": "G", "TA": "G", "TG": "A", "TC": "G", "TT": "T"]
var lastElement = string.removeLast()
var answer = ""
for _ in 1..<n {
    answer = dict[string.removeLast() + lastElement]!
    lastElement = answer
}
n == 1 ? print(lastElement) : print(answer)

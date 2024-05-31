let n = Int(readLine()!)!
var answer = ""

func make(s: String, _ n: Int) -> String {
    return String(repeating: s, count: n)
}
answer += String(repeating: make(s: "G", n) + make(s: ".", n * 3) + "\n", count: n)
answer += String(repeating: make(s: ".", n) + make(s: "I", n) + make(s: ".", n) + make(s: "T", n) + "\n", count: n)
answer += String(repeating: make(s: ".", n * 2) + make(s: "S", n) + make(s: ".", n) + "\n", count: n)

print(answer)

let words = Set(readLine()!.map { $0 } + "IOSHZXN".map { $0 })
let letters: Set<Character> = Set(["I", "O", "S", "H", "Z", "X", "N"])
print(words == letters ? "YES" : "NO")

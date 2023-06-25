import Foundation

var s = readLine()!
s = s.replacingOccurrences(of: "pi", with: " ")
s = s.replacingOccurrences(of: "ka", with: " ")
s = s.replacingOccurrences(of: "chu", with: " ")

print(s.trimmingCharacters(in: .whitespaces).isEmpty ? "YES" : "NO")

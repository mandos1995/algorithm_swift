let word = readLine()!.map { $0.asciiValue! - 3 < 65 ? $0.asciiValue! + 23 : $0.asciiValue! - 3 }.map { UnicodeScalar($0) }
print(word.map { String($0) }.joined())

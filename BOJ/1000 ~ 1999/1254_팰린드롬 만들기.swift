let s = readLine()!.map { String($0) }

for i in 0..<s.count {
    if isPalindrome(s[i...].reduce("", +)) {
        print(s.count + i)
        break
    }
}

func isPalindrome(_ s: String) -> Bool {
    return s == String(s.reversed())
}

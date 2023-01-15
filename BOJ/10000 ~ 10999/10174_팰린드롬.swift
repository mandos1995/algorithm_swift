func isPalindrome(str: String) -> Bool {
    return str == String(str.reversed())
}

let n = Int(readLine()!)!
for _ in 0..<n {
    isPalindrome(str: readLine()!.uppercased()) ? print("Yes") : print("No")
}

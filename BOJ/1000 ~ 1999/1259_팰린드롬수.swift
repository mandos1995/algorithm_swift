func isPalindrome(n: String) -> Bool {
    return n == String(n.reversed())
}

while let n = readLine(), n != "0" {
    isPalindrome(n: n) ? print("yes") : print("no")
}

func isPalindrome(_ word: String) -> Bool {
    return word == String(word.reversed())
}

let word = readLine()!
isPalindrome(word) ? print("true") : print("false")

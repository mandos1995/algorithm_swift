let input = readLine()!.split(separator: " ").map { String($0) }
let word1 = input[0], word2 = input[1]

if let num1 = Int(word1), let num2 = Int(word2) {
    print(num1 - num2)
} else {
    print("NaN")
}

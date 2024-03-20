let vowel: Set<Character> = ["a", "e", "i", "o", "u"]
var answer = ""
while var word = readLine(), word != "#" {
    var prev = ""
    while !word.isEmpty && !vowel.contains(word.first!) {
        prev.append(word.removeFirst())
    }
    answer += "\(word + prev)ay\n"
}
print(answer)

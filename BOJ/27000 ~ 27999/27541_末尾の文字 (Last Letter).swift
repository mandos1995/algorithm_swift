_ = readLine();
var word = readLine()!
word = word.last == "G" ? String(word.dropLast()) : word + "G"
print(word)

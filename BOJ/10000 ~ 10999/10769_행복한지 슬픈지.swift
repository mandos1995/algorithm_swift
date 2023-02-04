let word = readLine()!.map { $0 }
var sad = 0
var happy = 0
for i in 0..<word.count - 2 {
    if String(word[i...i + 2]) == ":-)" {
        happy += 1
        continue
    }
    
    if String(word[i...i + 2]) == ":-(" {
        sad += 1
        continue
    }
}

if sad == 0 && happy == 0 {
    print("none")
} else if sad == happy {
    print("unsure")
} else if sad > happy {
    print("sad")
} else {
    print("happy")
}

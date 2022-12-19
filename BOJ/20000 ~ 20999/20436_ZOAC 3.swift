func getDistance(c1: Character, c2: Character, isVowel: Bool) -> Int {
    var y1 = 0, y2 = 0, x1 = 0, x2 = 0
    if isVowel {
        for y in 0..<vowels.count {
            for x in 0..<vowels[y].count {
                if vowels[y][x] == c1 {
                    y1 = y
                    x1 = x
                }
                
                if vowels[y][x] == c2 {
                    y2 = y
                    x2 = x
                }
            }
        }
    } else {
        for y in 0..<consonants.count {
            for x in 0..<consonants[y].count {
                if consonants[y][x] == c1 {
                    y1 = y
                    x1 = x
                }
                
                if consonants[y][x] == c2 {
                    y2 = y
                    x2 = x
                }
            }
        }
    }
    
    return abs(x1 - x2) + abs(y1 - y2)
}

func isVowel(c: Character) -> Bool {
    return vowels.flatMap { $0 }.contains(c)
}

let consonants: [[Character]] = [
    ["q", "w", "e", "r", "t"],
    ["a", "s", "d", "f", "g"],
    ["z", "x", "c", "v"]
]

let vowels: [[Character]] = [
    ["-", "y", "u", "i", "o", "p"],
    ["-", "h", "j", "k", "l"],
    ["b", "n", "m"]
]


let input = readLine()!.map { $0 }
var currentConsonant = input.first!, currentVowel = input.last!
let word = readLine()!
var answer = word.count
for w in word {
    if isVowel(c: w) {
        answer += getDistance(c1: currentVowel, c2: w, isVowel: true)
        currentVowel = w
    } else {
        answer += getDistance(c1: currentConsonant, c2: w, isVowel: false)
        currentConsonant = w
    }
}

print(answer)

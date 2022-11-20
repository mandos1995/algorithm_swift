let input = readLine()!.split(separator: " ").map { Int($0)! }
let l = input[0], c = input[1]
let array = readLine()!.split(separator: " ").map { String($0) }.sorted(by: <)
var visited = [Bool](repeating: false, count: c + 1)

func combination(word: String, index: Int) {
    if word.count == l {
        var count = 0
        word.forEach {
            if ["a", "e", "i", "o", "u"].contains($0) {
                count += 1
            }
        }
        if count >= 1 && l - count > 1 {
            print(word)
        }
        return
    }
    
    for i in index..<array.count {
        if !visited[i] {
            visited[i] = true
            combination(word: word + array[i], index: i)
            visited[i] = false
        }
    }
}

combination(word: "", index: 0)

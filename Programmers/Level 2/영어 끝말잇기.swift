import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var wordSet = Set<String>()
    var answer = [0, 0]
    var prevWord = words[0].last!
    for (index, word) in words.enumerated() {
        if index == 0 {
            wordSet.insert(word)
            continue
        }
        
        if wordSet.contains(word) || prevWord != word.first! {
            answer[0] = index % n + 1
            answer[1] = index / n + 1
            break
        }
        wordSet.insert(word)
        prevWord = word.last!
    }
    return answer
}

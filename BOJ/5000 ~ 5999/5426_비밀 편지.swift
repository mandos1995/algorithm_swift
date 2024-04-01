import Foundation

let t = Int(readLine()!)!

for _ in 0..<t { solution() }

func solution() {
    let word = readLine()!.map { $0 }
    let count = word.count
    let d = Int(sqrt(Double(count)))
    
    var array: [[Character]] = []
    var arr: [Character] = []
    for i in 0..<count {
        if i != 0 && i % d == 0 {
            array.append(arr)
            arr = [word[i]]
        } else {
            arr.append(word[i])
        }
    }
    array.append(arr)
    
    for y in 0..<d {
        for x in 0..<d {
            print(array[x][d - y - 1], terminator: "")
        }
    }
    print()
}

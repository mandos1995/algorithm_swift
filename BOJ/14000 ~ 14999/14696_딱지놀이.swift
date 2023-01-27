func solution(_ array1: [Int], _ array2: [Int]) {
    let dict1 = Dictionary(array1[1...].map { ($0, 1) }, uniquingKeysWith: +)
    let dict2 = Dictionary(array2[1...].map { ($0, 1) }, uniquingKeysWith: +)
    for i in (1...4).reversed() {
        if dict1[i, default: 0] != dict2[i, default: 0] {
            if dict1[i, default: 0] > dict2[i, default: 0] {
                print("A")
            } else {
                print("B")
            }
            return
        }
    }
    print("D")
    return
}

let n = Int(readLine()!)!

for _ in 0..<n {
    let array1 = readLine()!.split(separator: " ").map { Int($0)! }
    let array2 = readLine()!.split(separator: " ").map { Int($0)! }
    solution(array1, array2)
}

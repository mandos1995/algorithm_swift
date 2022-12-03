func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer = [String](repeating: "", count: n)
    let binaryArray1 = arr1.map { String(repeating: "0", count: n - String($0, radix: 2).count) + String($0, radix: 2) }
    let binaryArray2 = arr2.map { String(repeating: "0", count: n - String($0, radix: 2).count) + String($0, radix: 2) }
    
    for i in 0..<n {
        var ans = ""
        let array1 = binaryArray1[i].map { $0 }
        let array2 = binaryArray2[i].map { $0 }
        for j in 0..<n {
            if array1[j] == "1" || array2[j] == "1" {
                ans = ans + "#"
            } else {
                ans = ans + " "
            }
        }
        answer[i] = ans
    }
    return answer
}

func solution(_ str1:String, _ str2:String) -> Int {
    let alpha: Set<String> = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    
    func getSet(_ array: [String]) -> [String] {
        var answer: [String] = []
        for i in 0..<array.count - 1 {
            if alpha.contains(array[i]) && alpha.contains(array[i + 1]) {
                let element = array[i] + array[i + 1]
                answer.append(element)
            }
        }
        return answer
    }
    
    let string1 = getSet(str1.map { String($0).uppercased() })
    var string2 = getSet(str2.map { String($0).uppercased() })
    
    if string1.isEmpty && string2.isEmpty {
        return 65536
    }
    
    var intersection: [String] = []
    for s in string1 {
        if string2.contains(s) {
            intersection.append(s)
            string2.remove(at: string2.firstIndex(of: s)!)
        }
    }
    
    let union: [String] = string1 + string2
    let answer = Int((Double(intersection.count) / Double(union.count)) * 65536)
    
    return answer
}

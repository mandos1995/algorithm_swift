import Foundation

func solution(_ s:String) -> Int {
    if s.count < 3 {
        return s.count
    }
    
    var result = s.count
    
    for lenght in 1...s.count / 2 {
        let slicedString = slicingString(s, lenght)
        let compressedString = compressingString(slicedString)
        result = min(result, compressedString.count)
    }
    
    return result
}

func slicingString(_ s: String, _ length: Int) -> [String] {
    if length == 1 {
        return s.map { String($0) }
    }
    var result: [String] = []
    var str = ""
    var count = 0
    for s in s {
        str += String(s)
        count += 1
        if count == length {
            result.append(str)
            count = 0
            str = ""
        }
    }
    if count != 0 {
        result.append(str)
    }
    return result
}

func compressingString(_ array: [String]) -> String {
    var result = ""
    var temp = ""
    var count = 1
    
    for str in array {
        if temp == str {
            count += 1
            continue
        }
        
        if !temp.isEmpty {
            result += count == 1 ? "\(temp)" : "\(count)\(temp)"
        }
        temp = str
        count = 1
    }
    
    if !temp.isEmpty {
        result += count == 1 ? "\(temp)" : "\(count)\(temp)"
    }
    return result
}

var dict: [Int: String] = [:]
var isLie = false
while true {
    let num = Int(readLine()!)!
    if num == 0 {
        break
    }

    let answer = readLine()!
    
    if dict[num] != nil && dict[num]! != answer {
        isLie = true
    } else {
        dict[num] = answer
    }
    
    if answer == "right on" {
        let lowValueDict = dict.filter { $0.value == "too high" }
        let highValueDict = dict.filter { $0.value == "too low" }
        
        for (key, _) in lowValueDict {
            if num >= key {
                isLie = true
            }
        }
        
        for (key, _) in highValueDict {
            if num <= key {
                isLie = true
            }
        }

        isLie ? print("Stan is dishonest") : print("Stan may be honest")
        isLie = false
        dict.removeAll()
    }
    
}

while let input = readLine() {
    if input == "#" {
        break
    }
    
    let ALPHA = "abcdefghijklmnopqrstuvwxyz"
    var dict: [Character: Int] = [:]
    for a in ALPHA {
        dict[a] = 0
    }
    
    for chr in input.lowercased() {
        if let _ = dict[chr] {
            dict[chr]! += 1
        } else {
            continue
        }
    }
    print(dict.filter({ element in
        element.value > 0
    }).count)
}

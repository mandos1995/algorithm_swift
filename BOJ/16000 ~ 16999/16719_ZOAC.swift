let str = readLine()!.map { $0 }
var visitied = [Bool](repeating: false, count: str.count)

func selectString(left: Int, right: Int) {
    if left >= right {
        return
    }
    
    var selectedIndex = left
    
    for i in left..<right {
        if str[selectedIndex] > str[i] {
            selectedIndex = i
        }
    }
    
    visitied[selectedIndex] = true
    
    visitied.enumerated().forEach {
        if $0.element {
            print(str[$0.offset], terminator: "")
        }
    }
    
    print()
    
    selectString(left: selectedIndex + 1, right: right)
    selectString(left: left, right: selectedIndex)
}

selectString(left: 0, right: str.count)

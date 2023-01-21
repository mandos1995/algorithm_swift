func makeBitString(n: String) -> String {
    var n = n
    let isEven = n.removeLast() == "e"
    let oneCount = n.filter { $0 == "1" }.count
    if oneCount % 2 == 0 {
        return isEven ? n + "0" : n + "1"
    } else {
        return isEven ? n + "1" : n + "0"
    }
}

while let n = readLine(), n != "#" {
    print(makeBitString(n: n))
}

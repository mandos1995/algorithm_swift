while let str = readLine(), str != "*" {
    var set: Set<Character> = []
    str.forEach { set.insert($0) }
    set.remove(" ")
    set.count == 26 ? print("Y") : print("N")
}

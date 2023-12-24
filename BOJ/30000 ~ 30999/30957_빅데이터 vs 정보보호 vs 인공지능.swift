_ = readLine();
let dict = Dictionary(readLine()!.map{ ($0, 1) }, uniquingKeysWith: +)
let keys = Set(dict.filter { $0.value == dict.values.max()! }.map { $0.key })
if keys.count == 3 {
    print("SCU")
} else if keys.count == 2 {
    if keys == Set(["B", "S"]) {
        print("BS")
    } else if keys == Set(["B", "A"]) {
        print("BA")
    } else {
        print("SA")
    }
} else {
    print(keys.first!)
}

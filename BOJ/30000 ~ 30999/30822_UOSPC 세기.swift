_ = readLine();
let dict = Dictionary(readLine()!.map { ($0, 1) }, uniquingKeysWith: +)
print(min(dict["u", default: 0], dict["o", default: 0], dict["s", default: 0], dict["p", default: 0], dict["c", default: 0]))

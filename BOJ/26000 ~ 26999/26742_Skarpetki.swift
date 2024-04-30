let dict = Dictionary(readLine()!.map { ($0, 1) }, uniquingKeysWith: +)
print(dict["B"]!/2+dict["C"]!/2)

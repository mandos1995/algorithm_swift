_ = readLine();
let dict = Dictionary(readLine()!.map{($0,1)},uniquingKeysWith:+)
print(dict.filter{$0.key != "." && $0.key != " " && $0.key != "," }.values.max()!)

readLine();
let score = Int(readLine()!)!
let array = (readLine()!.split{ $0 == " " }.map{ Int($0)! } + [score]).sorted(by: >)
print(array.firstIndex(of: score)! + 1)

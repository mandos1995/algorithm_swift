_ = readLine()
let s = readLine()!.filter { !"JAV".contains($0) }
print(s.isEmpty ? "nojava" : s)

var elf: [Int] = []
for _ in 0..<9 {
    elf.append(Int(readLine()!)!)
}
let targetSum = elf.reduce(0, +) - 100

outerLoop: for i in 0..<8 {
    for j in i + 1..<9 {
        if elf[i] + elf[j] == targetSum {
            for e in elf.sorted(by: <) {
                if e == elf[i] || e == elf[j] {
                    continue
                } else {
                    print(e)
                }
            }
            break outerLoop
        }
    }
}

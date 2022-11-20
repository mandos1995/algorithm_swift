let year = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
(year[0] == year[1]) || (year[1] == year[2]) || (year[0] + year[1] == year[2]) ? print("S") : print("N")

print(UnicodeScalar(Set([Int](65..<91)).subtracting(Set(readLine()!.map{Int($0.asciiValue!)})).first!)!)

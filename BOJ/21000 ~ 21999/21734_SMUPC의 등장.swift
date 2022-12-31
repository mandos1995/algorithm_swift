readLine()!.forEach {print(String(repeating:$0,count:"\($0.asciiValue!)".map {Int(String($0))!}.reduce(0,+)))}

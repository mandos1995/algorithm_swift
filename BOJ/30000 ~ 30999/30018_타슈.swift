readLine();print(zip(readLine()!.split{$0==" "}.map{Int($0)!},readLine()!.split{$0==" "}.map{Int($0)!}).map{abs($0.0-$0.1)}.reduce(0,+)/2)

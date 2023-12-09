readLine();print(readLine()!.split{$0==" "}.map{["he","him","she","her"].contains(String($0)) ?1:0}.reduce(0,+))

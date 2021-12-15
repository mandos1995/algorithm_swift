func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted { $0 < $1 }.sorted { $0[$0.index($0.startIndex, offsetBy: n)] < $1[$1.index($1.startIndex, offsetBy: n)] }
}

func solution(_ s:String) -> String {
    let count = s.count
    let idx = count / 2
    return s.count % 2 == 0 ? s.substring(from: idx - 1, to: idx) : s.substring(from: idx, to: idx)
}
extension String {
    func substring(from: Int, to: Int) -> String {
        guard from < count, to >= 0, to - from >= 0 else {
            return ""
        }

        let startIndex = index(self.startIndex, offsetBy: from)
        let endIndex = index(self.startIndex, offsetBy: to + 1)
        return String(self[startIndex ..< endIndex])
    }
}

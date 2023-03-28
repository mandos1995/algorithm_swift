let nums = readLine()!.map { Int(String($0))! }
var d: Set<Int> = []
for i in 0..<nums.count - 1 {
    d.insert(nums[i + 1] - nums[i])
}
print(d.count < 2 ? "◝(⑅•ᴗ•⑅)◜..°♡ 뀌요미!!" : "흥칫뿡!! <(￣ ﹌ ￣)>")

var tiger = 0
for _ in 0..<9 {
    tiger += readLine()! == "Tiger" ? 1 : 0
}
print(tiger > 4 ? "Tiger" : "Lion")

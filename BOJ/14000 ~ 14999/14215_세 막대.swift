var tri = readLine()!.split(separator: " ").map { Int($0)! }
tri.sort()
if tri[2] >= tri[0] + tri[1] {
    tri[2] = tri[0] + tri[1] - 1
}
print(tri.reduce(0, +))

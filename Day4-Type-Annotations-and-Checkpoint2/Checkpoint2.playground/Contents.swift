
let albums = ["Red", "Fearless"]
print(albums.count)

var Numbers = Set<String>()
Numbers.insert("One")
Numbers.insert("Two")
Numbers.insert("Three")
print(Numbers.count)

var NumbersFromArrays = Set<String>(["One", "Two", "Three"])
Numbers.insert("Two")
print(NumbersFromArrays)

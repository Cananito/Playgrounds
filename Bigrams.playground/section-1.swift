
// https://twitter.com/_Jordan/status/563553449690673152

func bigrams(text: String) -> [(String, String)] {
    let words = split(text.characters) { $0 == " " }.map { String($0) }
    return Array(Zip2(words, words[1..<words.count]))
}

let result = bigrams("one two three four five")
print(result)

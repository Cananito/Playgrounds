
func bigrams(text: String) -> [(String, String)] {
    let words = split(text, { (letter) -> Bool in
        return letter == " "
    })
    return Array(Zip2(words, words[1..<words.count]))
}

let result = bigrams("one two three four five")
println(result)
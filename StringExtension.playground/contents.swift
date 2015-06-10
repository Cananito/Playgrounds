public extension String {
    public func removedCharactersFromString(string: String) -> String {
        var newString = ""
        
        for character in self.characters {
            if string.containsCharacter(character) == false {
                newString += String(character)
            }
        }
        
        return newString
    }
    
    public mutating func removeCharactersFromString(string: String) {
        var newString = ""
        
        for character in self.characters {
            if string.containsCharacter(character) == false {
                newString += String(character)
            }
        }
        
        self = newString
    }
    
    public func containsCharacter(character: Character) -> Bool {
        for selfCharacter in self.characters {
            if selfCharacter == character {
                return true
            }
        }
        return false
    }
    
    public func stringByReplacingCharacter(character: Character, withString: String) -> String {
        var newString = ""
        
        for char in self.characters {
            if char == character {
                newString += withString
            } else {
                newString += String(char)
            }
        }
        
        return newString
    }
    
    func toDouble() -> Double? {
        var components = split(self.characters) { $0 == Character(".") }.map { String($0) }
        
        if components.count == 0 {
            return nil
        } else if components.count > 2 {
            return nil
        } else if components.count == 2 && (components[0] == "" || components[1] == "") {
            return nil
        }
        
        var whole = 0.0
        if let w = Int(components[0]) {
            whole = Double(w)
        } else {
            return nil
        }
        
        if components.count == 1 {
            return whole
        }
        
        var fractional = 0.0
        if let f = Int(components[1]) {
            let toThePower = components[1].characters.count
            var denominator = 10.0
            
            if toThePower == 0 {
                denominator = 1.0;
            } else {
                for var i = 1; i < toThePower; i++ {
                    denominator *= denominator
                }
            }
            
            fractional = Double(f) / denominator
        } else {
            return nil
        }
        
        return whole + fractional
    }
    
    func toFloat() -> Float? {
        if let val = self.toDouble() {
            return Float(val)
        } else {
            return nil
        }
        
    }
}

let immutableString = "Lalalala"
let lString = immutableString.removedCharactersFromString("a")

var mutableString = immutableString
mutableString.removeCharactersFromString("a")

let containsTrue = immutableString.containsCharacter("a")
let containsFalse = immutableString.containsCharacter("b")

let replacedString = immutableString.stringByReplacingCharacter("L", withString: "Ho")

let array = split("1,2,3".characters) { $0 == "," }
array

let numberString = "5.4"
let double = numberString.toDouble()
let float = numberString.toFloat()


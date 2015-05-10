
var dictionary = [String: [String]]()

dictionary["A"] = ["1"]

if var array = dictionary["A"] {
    array.append("2")
//    dictionary["A"] = array
}

dictionary

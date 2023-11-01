/*
 Remove adjacent duplicate letters, one pair at a time where both members of a pair of adjacent duplicate letters need to be removed.
 Eg
 Input: s = "abbaca" caaa > ca
 Output: "ca"
 Input: s = "azxxzy" azzy > ay
 Output: "ay"
 */

func testDuplicate() {
    var input = [
        "g",
        "ggaabcdeb", // bcdeb
        "abbddaccaaabcd", // abcd
        "aannkwwwkkkwna",
        "abbabccblkklu"
    ];
    print(input);
    
    for (index, element) in input.enumerated() {
        let temp = removeDuplicate(input: element)
        input[index] = temp
    }
    print(input);
}

func removeDuplicate(input: String) -> String {
    var temporaryString = ""
    for char in input {
        if let value = temporaryString.last, value == char {
            temporaryString.removeLast()
        } else {
            temporaryString.append(char)
        }
    }
    return temporaryString
}

testDuplicate()

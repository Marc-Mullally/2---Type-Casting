/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var collection : [Any] = [1.3, "the", 2, true]
print(collection)

//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for thing in collection {
    if thing is Int {
        print("The integer has a value of \(thing)")
    } else if thing is Double {
        print("The double has a value of \(thing)")
    } else if thing is String {
        print("The String has a value of \(thing)")
    } else if thing is Bool {
        print("The boolean has a value of \(thing)")
    }
}

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var dictionary : [String : Any] = ["First" : 1, "Second":  2.2, "Third" : "the", "Four" : true]

//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total = 0.0
for (_ , stuff) in dictionary {
    if let stuff = stuff as? Int {
        total += Double(stuff)
    } else if let stuff = stuff as? Double {
        total += stuff
    } else if let stuff = stuff as? String {
        total += 1.0
    } else if let stuff = stuff as? Bool {
        if stuff == true{
            total += 2.0
        } else {
            total -= 3.0
        }
    }
    
}
print(total)

//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2 = 0.0
for (_ , stuff) in dictionary {
    if let stuff = stuff as? Int {
        total2 += Double(stuff)
    } else if let stuff = stuff as? Double {
        total2 += stuff
    } else if let stuff = stuff as? String {
        if let stuff = Int(stuff) {
            total2 += Double(stuff)
        } else if let stuff = Double(stuff) {
            total += stuff
        } else {
            total2 += 1.0
        }
         
    }
    
}
print(total2)

/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */

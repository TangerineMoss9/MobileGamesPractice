/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var collect: [Any] = [8.9,9,"Hello", true]
print(collect)
/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */
for item in collect{
    if item is Int{
        print("The integer has a value of \(item)")
    }
    else if item is Double{
        print("The double has a value of \(item)")
    }
    else if item is String{
        print("The string has a value of \(item)")
    }
    else if item is Bool{
        print("The Bool has a value of \(item)")
    }
}

/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
var diction:[String:Any] = ["one":true, "two":3.5, "three":6, "four":"4"]
print(diction)
/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total:Double = 0

for (key,value) in diction{
    if value is Int{
        var temp:Int = diction[key] as! Int
        total += Double(temp)
    }
    else if value is Double{
        var temp:Double = diction[key] as! Double
        total += temp
    }
    else if value is String{
        total += 1
    }
    else if value is Bool{
        total += 2
    }
    
}
print(total)
/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */
var total2:Double = 0

for (key,value) in diction{
    if value is Int{
        var temp:Int = diction[key] as! Int
        total2 += Double(temp)
    }
    else if value is Double{
        var temp:Double = diction[key] as! Double
        total2 += temp
    }
    else if value is String{
        if let temp:Double? = diction[key] as? Double{
            if temp != nil{
                total2 += temp!
            }
        }
    }
    
    
}
print(total2)

//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)

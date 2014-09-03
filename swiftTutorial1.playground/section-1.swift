// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let tutorialTeam = 56
let editorialTeam = 23
var totalTeam = tutorialTeam + editorialTeam
totalTeam+=1
let priceIntInferred = -19
let princeIntExplicit:Int = -19

let priceIferred = -19.99
let priceExplicit:Double = -19.99

let priceFloatInferred = -19.99
let priceFloatExplicit:Float = -19.99

let onSaleInferred = true
let onSaleExplicit:Bool = false

let nameInferred = "Whoopie Cushion"
let nameExplicit:String = "Whoopie Cushion"

var shoppingListExplicit = [String]()
shoppingListExplicit = ["Eggs","Milk"]
//var shoppingExplicit: [String] = ["Eggs","Milk"]

var shoppingList = ["Eggs","Milk"]
println("The shopping list contains \(shoppingList.count) items.")
shoppingList.append("Flour")
shoppingList += "Baking Powder"
shoppingList += ["Chocolate Spread","Cheess","Butter"]
var firstItem = shoppingList[0]
shoppingList[0] = "Six Eggs"
//shoppingList[0...3] = ["Bananas","Apples"]
shoppingList

shoppingList += ["Baking Powder"]
//shoppingList now contains 4 items
shoppingList += ["Chocolate Spread","Cheess","Butter"]
//shoppingList now contains 7 items
shoppingList.insert("Maple syrup", atIndex: 0)
//shoppingList now contains 7 items
//"Maple syrub" is now the first item in the list
shoppingList.append("Flour")
//shoppingList now contains 3 items,and someone is making pancakes
shoppingList += ["Baking Powder"]
firstItem = shoppingList[0]
//first item is qual to "Eggs"
shoppingList[4...6] = ["Banana","Apple"]
//shoppingList now contains 6 items
shoppingList

let array: Array<Int> = [1,2,3,4]
let dictionary: Dictionary<String,Int> = ["dog":1,"elephant":2]
//let dictionary = ["dog":1,"elephant":2]

var airport:[String:String] = ["TYO":"Tokyo","DUB":"Dublin"]
if airport.isEmpty{
println("The airport dictionary is empty.")
}else{
println("the airport dictionary is not empty.")
}

println("the airport dictionary contains \(airport.count) items.")
//print "the airport dictionary contains 2 items."

airport["LHR"] = "London"
//the airport dictionary now contains 3 items.

airport["LHR"] = "London 555"
//change value

airport["LHR"]=nil
//LHR has now been remove from the airport dictionary

airport

if let removedValue = airport.removeValueForKey("LHR"){
println("5678  remove \(removedValue) .")
}else
{
}








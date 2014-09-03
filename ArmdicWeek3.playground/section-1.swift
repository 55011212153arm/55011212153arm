// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let array :Array<Int> = [1,2,3,4]
let dictionary :Dictionary<String,Int> = ["Dog":1,"Elephant":2]

var airport:[String:String] = ["TKO":"Tokyo","DUB":"Dublin","BKK":"Bankok"]

println("\(airport.count)")
if(airport.isEmpty){
    println("empty")
}

airport["TKO"] = "Tokyo555"
airport["LA"] = "Losangeles"
airport["NY"] = "NewYork"

let oldValue = airport.updateValue("Dublin Interbational", forKey: "DUB")
airport
airport["TKO"] = nil
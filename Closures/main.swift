//
//  main.swift
//  Closures
//
//  Created by photon on 05/02/18.
//  Copyright © 2018 photon. All rights reserved.
//

import Foundation

 //Functions.

func calculator ( x:Int,y:Int,operation:(Int,Int) ->Int) -> Int {
    return operation(x,y)
}

func add(x1:Int,y1:Int) ->Int{
    return x1+y1
}

func subtract(x1:Int,y1:Int) ->Int{
    return x1-y1
    
    
}

calculator(x:5,y:4,operation: add)




calculator(x:2,y:4, operation:{(x1,y1) in x1+y1})

//$0 = x1(first parameter)
//$1 = y1(second parameter)

  let sum = calculator(x:2,y:4,operation: {$0+$1})
  print(sum)

//Trailing closures(If the last parameter is a closure we can omit the last parameter name and that is trailing closure)
let multiply =  calculator(x:2,y:4) {$0*$1}
print(multiply)




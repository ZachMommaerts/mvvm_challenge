//
//  PizzaModel.swift
//  mvvm_challenge
//
//  Created by Zach Mommaerts on 3/5/23.
//

import Foundation

class PizzaModel{
    
    var pizzaArray = [Pizza]()
    
    init(){
        
        pizzaArray.append(Pizza(name: "BBQ", topping1: "Chicken", topping2: "Red Onions", topping3: "BBQ sauce"))
        
        pizzaArray.append(Pizza(name: "Hawaiian", topping1: "Pineapple", topping2: "Ham", topping3: "gruyere"))
        
        pizzaArray.append(Pizza(name: "Meat Lovers", topping1: "Chicken", topping2: "Sausage", topping3: "Pepperoni"))
    }
}

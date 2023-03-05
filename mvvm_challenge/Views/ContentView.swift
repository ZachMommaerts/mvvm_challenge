//
//  ContentView.swift
//  mvvm_challenge
//
//  Created by Zach Mommaerts on 3/5/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var pizzas = PizzaModel()
    var body: some View {
        VStack {
            List(pizzas.pizzaArray){ pizza in
                
                VStack{
                    Text(pizza.name)
                    HStack{
                        Text(pizza.topping1)
                        Text(pizza.topping2)
                        Text(pizza.topping3)
                    }
                }
            }
            Button(action: {
                for i in pizzas.pizzaArray.indices{
                    pizzas.pizzaArray[i].topping1 = "pineapple"
                }
            }, label: {
                Text("Add Pineapple")
            })
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

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
            ScrollView{
                VStack(alignment: .leading){
                    ForEach(pizzas.pizzaArray){ pizza in
                        
                        PizzaView(pizza: pizza)
                    }
                }
            }
            Button(action: {
                for i in pizzas.pizzaArray.indices{
                    pizzas.pizzaArray[i].toppings[0] = "pineapple"
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

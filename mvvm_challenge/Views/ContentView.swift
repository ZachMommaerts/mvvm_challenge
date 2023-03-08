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
                
                HStack{
                    Image(pizza.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50, alignment: .center)
                        .clipped()
                        .cornerRadius(5)
                    VStack{
                        Text(pizza.name)
                            .font(.title)
                        HStack{
                            Text(pizza.topping1)
                                .font(.body)
                            Text(pizza.topping2)
                                .font(.body)
                            Text(pizza.topping3)
                                .font(.body)
                        }
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

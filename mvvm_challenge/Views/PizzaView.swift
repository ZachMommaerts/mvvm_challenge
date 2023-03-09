//
//  PizzaView.swift
//  mvvm_challenge
//
//  Created by Zach Mommaerts on 3/9/23.
//

import SwiftUI

struct PizzaView: View {
    
    var pizza: Pizza
    
    var body: some View {
        HStack{
            Image(pizza.image)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50, alignment: .center)
                .clipped()
                .cornerRadius(15)
            VStack(alignment: .leading){
                Text(pizza.name)
                    .font(.title)
                HStack{
                    ForEach(pizza.toppings, id: \.self){ topping in
                        Text(topping)
                    }
                }
            }
        }
    }
}

struct PizzaView_Previews: PreviewProvider {
    static var previews: some View {
        let model = PizzaModel()
        PizzaView(pizza: model.pizzaArray[0])
    }
}

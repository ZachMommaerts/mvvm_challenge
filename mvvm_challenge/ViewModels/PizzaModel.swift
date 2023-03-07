//
//  PizzaModel.swift
//  mvvm_challenge
//
//  Created by Zach Mommaerts on 3/5/23.
//

import Foundation

class PizzaModel:ObservableObject{
    
    @Published var pizzaArray = [Pizza]()
    
    init(){
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        if let path = pathString{
            let url = URL(fileURLWithPath: path)
            
            do{
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                do{
                    let pizzaData = try decoder.decode([Pizza].self, from: data)
                    
                    for pizza in pizzaData{
                        pizza.id = UUID()
                    }
                    pizzaArray = pizzaData

                } catch{
                    print(error)
                }
            }catch{
                print(error)
            }
        }
        
    }
}

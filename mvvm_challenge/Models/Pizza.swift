//
//  Pizza.swift
//  mvvm_challenge
//
//  Created by Zach Mommaerts on 3/5/23.
//

import Foundation

class Pizza: Identifiable, Decodable{
    
    var id:UUID?
    var name:String
    var image:String
    var toppings: [String]

}

//
//  User.swift
//  exo3_surf
//
//  Created by AUCHART Alexandre on 09/06/2021.
//

import Foundation



struct User: Codable {
    let id: Int
    var name:String
    var username:String
    var email:String
    var address: address
    var phone:String
    var website:String
    

  
}
struct address :Codable{
    var street: String
    var suite: String
    var city: String
    var zipcode: String
    var geo: geo
}
struct company :Codable{
    var name: String
    var catchPhrase: String
    var bs: String
}
struct geo :Codable{
    var lat: String
    var lng: String
}

//
//  Surfer.swift
//  exo3_surf
//
//  Created by AUCHART Alexandre on 16/05/2021.
//

import Foundation


struct Surfer {
    var name : String
    var surname : String
    var profile: String {
        return name + "-profile"
    }
    var bg: String {
        return name + "-bg"
    }
    
    var nationality : String
    
}

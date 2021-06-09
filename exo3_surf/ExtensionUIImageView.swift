//
//  ExtensionUIImageView.swift
//  exo3_surf
//
//  Created by AUCHART Alexandre on 16/05/2021.
//

import UIKit

extension UIImageView{
    
    func from( _ imageString : String){
        let image = UIImage(named: imageString.lowercased())
        self.image = image
    }
}

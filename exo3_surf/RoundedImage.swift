//
//  RoundedImage.swift
//  exo3_surf
//
//  Created by AUCHART Alexandre on 16/05/2021.
//

import UIKit

class RoundedImage: UIImageView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setupRounded()
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupRounded()
        
    }
    
    func setupRounded(){
        layer.cornerRadius = frame.height / 2
        layer.borderWidth = 3
        layer.borderColor = UIColor.systemBackground.cgColor
        
    }
    

}

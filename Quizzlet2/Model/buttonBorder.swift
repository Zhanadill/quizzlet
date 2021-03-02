//
//  buttonBorder.swift
//  Quizzlet2
//
//  Created by Жанадил on 11/30/20.
//  Copyright © 2020 Жанадил. All rights reserved.
//

import UIKit

@IBDesignable
class buttonBorder: UIButton {
    override func prepareForInterfaceBuilder() {
        aaa()
    }
    
    override func awakeFromNib() {
        super .awakeFromNib()
        aaa()
    }
    
    func aaa(){
        layer.cornerRadius = 20
        layer.borderWidth = 5
        layer.borderColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        layer.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
    }

}

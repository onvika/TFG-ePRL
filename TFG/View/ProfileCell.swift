//
//  ProfileCell.swift
//  TFG
//
//  Created by Onhilda Benítez Gómez on 23/6/18.
//  Copyright © 2018 Onhilda Benítez Gómez. All rights reserved.
//

import UIKit

class ProfileCell: UITableViewCell {

    
    @IBOutlet weak var valorElementoTextField: UILabel!
    @IBOutlet weak var elementoTextField: UILabel!
    
    func setElemento (a: String)
    {
        elementoTextField.text = a
        valorElementoTextField.text = a 
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

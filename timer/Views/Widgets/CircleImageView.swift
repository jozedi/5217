//
//  CircleImageView.swift
//  timer
//
//  Created by Jose Diaz on 4/02/18.
//  Copyright © 2018 Jose Diaz. All rights reserved.
//

import UIKit

class CircleImageView: UIImageView {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.width / 2
    }
}

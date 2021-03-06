//
//  ProfileImageView.swift
//  tinder
//
//  Created by iKreb Retina on 9/23/15.
//  Copyright (c) 2015 krze. All rights reserved.
//

import UIKit

class ProfileImageView: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var profileImageView: UIImageView!
    
    var image: UIImage? {
        get { return profileImageView.image }
        set { profileImageView.image = UIImage(named: "ryan") }
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initSubviews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }
    
    func initSubviews() {
        // standard initialization logic
        let nib = UINib(nibName: "ProfileImageView", bundle: nil)
        nib.instantiateWithOwner(self, options: nil)
        contentView.frame = bounds
        addSubview(contentView)
        
        // custom initialization logic
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}

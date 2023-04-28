//
//  PhotoView.swift
//  PamidalaAlbumApp
//
//  Created by Pamidala,Chandra Adithya on 3/28/23.
//

import Foundation
import UIKit

class PhotoView: UIView {
    
    var imageDescription: String?
    @IBOutlet var contentView: UIView!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var likeLBL: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) { 
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        
        Bundle.main.loadNibNamed("PhotoView", owner: self)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        self.imageView.contentMode = .scaleToFill
        self.contentView.layer.cornerRadius = 10.0
        self.contentView.layer.borderColor = UIColor.darkGray.cgColor
        self.contentView.layer.borderWidth = 2.0
        self.likeLBL.text = "❤️"
        self.likeLBL.isHidden = true
        
        
    }
}

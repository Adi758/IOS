//
//  ImageDescVC.swift
//  PamidalaAlbumApp
//
//  Created by Pamidala,Chandra Adithya on 3/28/23.
//

import UIKit

class ImageDescVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descTV: UITextView!
    
    var vehicleIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.layer.cornerRadius = 20
        imageView.image = UIImage(named: AppConstants.vehicles[vehicleIndex].0.lowercased())
        descTV.text = AppConstants.vehicles[vehicleIndex].1
        
        
        imageView.isUserInteractionEnabled = true
        let up = UISwipeGestureRecognizer(target: self, action: #selector(upSwiped(_:)))
        up.direction = .up
        imageView.addGestureRecognizer(up)
        
        let down = UISwipeGestureRecognizer(target: self, action: #selector(downSwiped(_:)))
        down.direction = .down
        imageView.addGestureRecognizer(down)
    }
    
    @objc private func upSwiped(_ sender: UISwipeGestureRecognizer) {
        
        self.imageView.transform = self.imageView.transform.scaledBy(x: 2.0, y: 2.0)
    }
    
    @objc private func downSwiped(_ sender: UISwipeGestureRecognizer) {
        
        self.imageView.transform = self.imageView.transform.scaledBy(x: 0.5, y: 0.5)
    }
}

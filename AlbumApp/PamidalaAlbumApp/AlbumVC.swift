//
//  AlbumVCViewController.swift
//  PamidalaAlbumApp
//
//  Created by Pamidala,Chandra Adithya on 3/28/23.
//

import UIKit
import AVFoundation

class AlbumVC: UIViewController, UIScrollViewDelegate {
    
    var sound = AVAudioPlayer()
    
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var contentView: UIView!
    
    @IBOutlet var v1: PhotoView!
    @IBOutlet var v2: PhotoView!
    @IBOutlet var v3: PhotoView!
    @IBOutlet var v4: PhotoView!
    @IBOutlet var v5: PhotoView!
    @IBOutlet var v6: PhotoView!
    @IBOutlet var v7: PhotoView!
    @IBOutlet var v8: PhotoView!
    
    var vehicles = [(String, String)]()
    var vehicleIndex = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        
        
        self.initilizeSound()
        self.initilizeLongPress()
        self.initilizeTapGesture()
        
        scrollView.minimumZoomScale = 1/25
        scrollView.maximumZoomScale = 1
        
        self.showVehicleImages()
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        
        return contentView
    }
    
    func initilizeLongPress() {
        
        let gesture1 = UILongPressGestureRecognizer(target: self, action: #selector(longPressed))
        self.v1.addGestureRecognizer(gesture1)
        
        let gesture2 = UILongPressGestureRecognizer(target: self, action: #selector(longPressed))
        self.v2.addGestureRecognizer(gesture2)
        
        let gesture3 = UILongPressGestureRecognizer(target: self, action: #selector(longPressed))
        self.v3.addGestureRecognizer(gesture3)
        
        let gesture4 = UILongPressGestureRecognizer(target: self, action: #selector(longPressed))
        self.v4.addGestureRecognizer(gesture4)
        
        let gesture5 = UILongPressGestureRecognizer(target: self, action: #selector(longPressed))
        self.v5.addGestureRecognizer(gesture5)
        
        let gesture6 = UILongPressGestureRecognizer(target: self, action: #selector(longPressed))
        self.v6.addGestureRecognizer(gesture6)
        
        let gesture7 = UILongPressGestureRecognizer(target: self, action: #selector(longPressed))
        self.v7.addGestureRecognizer(gesture7)
        
        let gesture8 = UILongPressGestureRecognizer(target: self, action: #selector(longPressed))
        self.v8.addGestureRecognizer(gesture8)
    }
    
    @objc func longPressed(sender: UILongPressGestureRecognizer) {
        
        if sender.state == .ended {
            
            sound.play()
            vehicleIndex = sender.view?.tag ?? 0
            
            self.performSegue(withIdentifier: "imageDeets", sender: self)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "imageDeets") {
            let obj = segue.destination as! ImageDescVC
            obj.vehicleIndex = vehicleIndex - 1
        }
    }
    
    
    func initilizeTapGesture() {
        
        let gesture1 = UITapGestureRecognizer(target: self, action: #selector(DoubleTaped))
        gesture1.numberOfTapsRequired = 2
        self.v1.addGestureRecognizer(gesture1)
        
        let gesture2 = UITapGestureRecognizer(target: self, action: #selector(DoubleTaped))
        gesture2.numberOfTapsRequired = 2
        self.v2.addGestureRecognizer(gesture2)
        
        let gesture3 = UITapGestureRecognizer(target: self, action: #selector(DoubleTaped))
        gesture3.numberOfTapsRequired = 2
        self.v3.addGestureRecognizer(gesture3)
        
        let gesture4 = UITapGestureRecognizer(target: self, action: #selector(DoubleTaped))
        gesture4.numberOfTapsRequired = 2
        self.v4.addGestureRecognizer(gesture4)
        
        let gesture5 = UITapGestureRecognizer(target: self, action: #selector(DoubleTaped))
        gesture5.numberOfTapsRequired = 2
        self.v5.addGestureRecognizer(gesture5)
        
        let gesture6 = UITapGestureRecognizer(target: self, action: #selector(DoubleTaped))
        gesture6.numberOfTapsRequired = 2
        self.v6.addGestureRecognizer(gesture6)
        
        let gesture7 = UITapGestureRecognizer(target: self, action: #selector(DoubleTaped))
        gesture7.numberOfTapsRequired = 2
        self.v7.addGestureRecognizer(gesture7)
        
        let gesture8 = UITapGestureRecognizer(target: self, action: #selector(DoubleTaped))
        gesture8.numberOfTapsRequired = 2
        self.v8.addGestureRecognizer(gesture8)
    }
    
    @objc func DoubleTaped(sender: UITapGestureRecognizer) {
        
        let tag = sender.view?.tag
        if tag == 1 {
            
            if self.v1.likeLBL.isHidden {
                
                self.v1.likeLBL.isHidden = false
            }else {
                
                self.v1.likeLBL.isHidden = true
            }
        }else if tag == 2 {
            
            if self.v2.likeLBL.isHidden {
                
                self.v2.likeLBL.isHidden = false
            }else {
                
                self.v2.likeLBL.isHidden = true
            }
        }else if tag == 3 {
            
            if self.v3.likeLBL.isHidden {
                
                self.v3.likeLBL.isHidden = false
            }else {
                
                self.v3.likeLBL.isHidden = true
            }
        }else if tag == 4 {
            
            if self.v4.likeLBL.isHidden {
                
                self.v4.likeLBL.isHidden = false
            }else {
                
                self.v4.likeLBL.isHidden = true
            }
        }else if tag == 5 {
            
            if self.v5.likeLBL.isHidden {
                
                self.v5.likeLBL.isHidden = false
            }else {
                
                self.v5.likeLBL.isHidden = true
            }
        }else if tag == 6 {
            
            if self.v6.likeLBL.isHidden {
                
                self.v6.likeLBL.isHidden = false
            }else {
                
                self.v6.likeLBL.isHidden = true
            }
        }else if tag == 7 {
            
            if self.v7.likeLBL.isHidden {
                
                self.v7.likeLBL.isHidden = false
            }else {
                
                self.v7.likeLBL.isHidden = true
            }
        }else if tag == 8 {
            
            if self.v8.likeLBL.isHidden {
                
                self.v8.likeLBL.isHidden = false
            }else {
                
                self.v8.likeLBL.isHidden = true
            }
        }
    }
    
    func initilizeSound() {
        do {
            let url = NSDataAsset(name: "Sound")
            sound = try AVAudioPlayer(data: url!.data, fileTypeHint: "mp3")
            sound.prepareToPlay()
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    func showVehicleImages()  {
        
        self.v1.imageView.image = UIImage(named: AppConstants.vehicles[0].0.lowercased())
        self.v2.imageView.image = UIImage(named: AppConstants.vehicles[1].0.lowercased())
        self.v3.imageView.image = UIImage(named: AppConstants.vehicles[2].0.lowercased())
        self.v4.imageView.image = UIImage(named: AppConstants.vehicles[3].0.lowercased())
        self.v5.imageView.image = UIImage(named: AppConstants.vehicles[4].0.lowercased())
        self.v6.imageView.image = UIImage(named: AppConstants.vehicles[5].0.lowercased())
        self.v7.imageView.image = UIImage(named: AppConstants.vehicles[6].0.lowercased())
        self.v8.imageView.image = UIImage(named: AppConstants.vehicles[7].0.lowercased())
    }
}

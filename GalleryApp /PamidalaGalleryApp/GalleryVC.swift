//
//  ViewController.swift
//  PamidalaGalleryApp
//
//  Created by Pamidala,Chandra Adithya on 3/14/23.
//

import UIKit

class GalleryVC: UIViewController {
   
        
    var CC: Category?
    var cp = 0
    
    
    
    @IBOutlet weak var searchTF: UITextField!
    
 
    @IBAction func SearchKeyword(_ sender: UITextField) {
        if let tt = sender.text, !tt.isEmpty {
                          searchBTN.isEnabled = true
                      } else {
                          searchBTN.isEnabled = false
                      }
    }
    
    
    
    
    
    @IBOutlet weak var commentTF: UITextField!
    
    @IBOutlet weak var pictureIV: UIImageView!
    
    @IBOutlet weak var pictureCommentsTV: UITextView!
    
    @IBOutlet weak var searchBTN: UIButton!
    
    @IBAction func search(_ sender: UIButton) {
        guard let sk = searchTF.text?.lowercased() else {
                            return
                        }
                        
                       
                        let cc = [carCategory, bikeCategory, laptopCategory, mobileCategory, watchCategory]
                        if let mc = cc.first(where: { $0.keywords.contains(sk) }) {
                            CC = mc
                            cp = 0
                            
                            pictureIV.image = UIImage(named: CC!.pictures[cp].name)
                            pictureCommentsTV.text = CC!.pictures[cp].comments.joined(separator: "\n")
                            likeBTN.setTitle("Like (\(CC!.pictures[cp].likeCount))", for: .normal)
                            dislikeBTN.setTitle("Dislike (\(CC!.pictures[cp].dislikeCount))", for: .normal)
                            likeBTN.isEnabled = true
                            dislikeBTN.isEnabled = true
                            commentTF.isEnabled = true
                            saveBTN.isEnabled = true
                            resetBTN.isEnabled = true
                        }else {
                          
                            pictureIV.image = UIImage(systemName: "folder")
                            pictureCommentsTV.text = AppConstants.defaultSearchMessage
                            likeBTN.isEnabled = false
                            dislikeBTN.isEnabled = false
                            commentTF.isEnabled = false
                            saveBTN.isEnabled = false
                            resetBTN.isEnabled = false
                        }
            
            }
            
        
   
    
    @IBOutlet weak var likeBTN: UIButton!
    
    
    @IBAction func like(_ sender: UIButton) {
        
        CC?.pictures[cp].likeCount = String(Int(CC!.pictures[cp].likeCount)! + 1)
                        likeBTN.setTitle("Like (\(CC!.pictures[cp].likeCount))", for: .normal)
        
        
       
    }
    
    @IBOutlet weak var dislikeBTN: UIButton!
    
    @IBAction func dislike(_ sender: UIButton) {
        CC?.pictures[cp].dislikeCount = String(Int(CC!.pictures[cp].dislikeCount)! - 1)
                        dislikeBTN.setTitle("dislike (\(CC!.pictures[cp].dislikeCount))", for: .normal)
    
       
    }
    
    @IBOutlet weak var saveBTN: UIButton!
    
    
    @IBAction func save(_ sender: UIButton) {
        guard let c = commentTF.text else {
                       return
                   }
                   
                   CC?.pictures[cp].comments.append(c)

               var cs = ""
                  for (index, comment) in CC!.pictures[cp].comments.enumerated() {
                      cs += "\(index + 1). \(comment)\n"
                  }
                  pictureCommentsTV.text = cs
        
                   commentTF.text = ""
    }
    
    @IBOutlet weak var resetBTN: UIButton!
    
    
    @IBAction func reset(_ sender: UIButton) {
                searchTF.text = ""
                pictureIV.image = UIImage(systemName: "folder")
                pictureCommentsTV.text = ""
                likeBTN.setTitle("Like (0)", for: .normal)
                dislikeBTN.setTitle("Dislike (0)", for: .normal)
                likeBTN.isEnabled = false
                dislikeBTN.isEnabled = false
                commentTF.text = ""
                commentTF.isEnabled = false
                saveBTN.isEnabled = false
                resetBTN.isEnabled = false
                searchBTN.isEnabled = false
                CC = nil
                cp = 0
        
        
    }
    
    
    @objc func swipeGesture(_ gestureRecognizer: UISwipeGestureRecognizer) {
        if gestureRecognizer.direction == .left {
            
            if cp < CC!.pictures.count - 1 {
                cp += 1
                UI()
            }
        } else if gestureRecognizer.direction == .right {
            
            if cp > 0 {
                cp -= 1
                UI()
            }
        }
    }
    func UI() {
        pictureIV.image = UIImage(named: CC!.pictures[cp].name)
        pictureCommentsTV.text = CC!.pictures[cp].comments.joined(separator: "\n")
        likeBTN.setTitle("Like (\(CC!.pictures[cp].likeCount))", for: .normal)
        dislikeBTN.setTitle("Dislike (\(CC!.pictures[cp].dislikeCount))", for: .normal)
    }
    
    
    
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
                     searchBTN.isEnabled = false
                     pictureIV.image = UIImage(systemName: "folder")
                      pictureCommentsTV.text = ""
                      likeBTN.isEnabled = false
                      dislikeBTN.isEnabled = false
                      commentTF.isEnabled = false
                      saveBTN.isEnabled = false
                      resetBTN.isEnabled = false
               
            
               let Right = UISwipeGestureRecognizer(target: self, action: #selector(swipeGesture(_:)))
                    Right.direction = .right
                   view.addGestureRecognizer(Right)
                   
                   let Left = UISwipeGestureRecognizer(target: self, action: #selector(swipeGesture(_:)))
                   Left.direction = .left
                   view.addGestureRecognizer(Left)
        
        
        
        
      
        
          
        
        
        

           }
    


}



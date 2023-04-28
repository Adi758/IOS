//
//  ViewController.swift
//  PamidalaHotelBooking
//
//  Created by Pamidala,Chandra Adithya on 2/21/23.
//

import UIKit

class HotelBookingVC: UIViewController {

    
    @IBOutlet weak var messageTV: UITextView!
    
    
    @IBOutlet weak var bedIMG: UIImageView!
    
    @IBOutlet weak var SingleBedBTN: UIButton!
    
    var roomType: String = ""
    
    @IBAction func bookSingleBed(_ sender: UIButton) {
        SingleBedBTN.isEnabled = false
        doubleBedBTN.isEnabled = true
                roomType = "Single Bed"
    }
    
    @IBOutlet weak var doubleBedBTN: UIButton!
    
    @IBAction func bookDoubleBed(_ sender: UIButton) {
        doubleBedBTN.isEnabled = false
        SingleBedBTN.isEnabled = true
                roomType = "Double Bed"
    }
    
    @IBAction func checkInRoom(_ sender: UIButton) {
        var image: String
        
        if doubleBedBTN.isEnabled {
            image = "bed1.jpeg"
        } else {
            image = "bed2.jpeg"
        }
        
        bedIMG.image = UIImage(named: image)
        
        guard let fullName = fullNameTF.text, !fullName.isEmpty,
                     let noOfNightsStr = noOfNightsTF.text, let noOfNights = Int(noOfNightsStr),
                     let noOfRoomsStr = noOfRoomsTF.text, let noOfRooms = Int(noOfRoomsStr) else {
                   messageTV.text = "Please fill all the fields."
                   return
               }
               
               let roomCharge = roomType == "Single Bed" ? 100.0 : 200.0
               let totalBill = roomCharge * Double(noOfNights) * Double(noOfRooms)
               let discount = getDiscount(for: noOfNights)
               let discountedBill = totalBill - (discount * totalBill)
               
               let message = "Thank you for booking with us, \(fullName)!\n\nYou have booked \(noOfRooms) room(s) of type '\(roomType)' for \(noOfNights) night(s).\n\nYour total bill is $\(discountedBill) (including \(discount * 100)% discount)."
               messageTV.text = message
    }
   
    
    @IBAction func cancleBooking(_ sender: UIButton) {
        fullNameTF.text = ""
               noOfNightsTF.text = ""
               noOfRoomsTF.text = ""
        SingleBedBTN.isEnabled = true
        doubleBedBTN.isEnabled = true
               messageTV.text = "Welcome to The Paradise\n\nExperience luxury and comfort like never before, only at our hotel."
               roomType = ""
           }
           
           // Helper function to get discount based on number of nights
           func getDiscount(for noOfNights: Int) -> Double {
               switch noOfNights {
               case 1:
                   return 0.0
               case 2...3:
                   return 0.1
               case 4...8:
                   return 0.2
               default:
                   return 0.3
               }
        
    }
    
    @IBOutlet weak var fullNameTF: UITextField!
    
    
    @IBOutlet weak var noOfNightsTF: UITextField!
    
    
    @IBOutlet weak var noOfRoomsTF: UITextField!
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bedIMG.layer.cornerRadius = 10
        messageTV.text = "Welcome to The Paradise\n\nExperience luxury and comfort like never before, only at our hotel."
        // Do any additional setup after loading the view.
        
    }


}


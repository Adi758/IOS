//
//  ViewController.swift
//  PamidalaCourseRegistrationApp
//
//  Created by Pamidala,Chandra Adithya on 2/6/23.
//

import UIKit

class CourseRegisterationVC: UIViewController {

    
    @IBOutlet weak var firstNameTF: UITextField!
    
    
    @IBOutlet weak var lastNameTF: UITextField!
    
    
    @IBOutlet weak var messageLBL: UILabel!
    
    
    @IBOutlet var courseSWCH: [UISwitch]!
   
    let courses=["iOS","patterns","Big Data"]
  // var switchBool = false
    
   @IBAction func toggleCourse(_ sender: UISwitch) {
        
      // sender.setOn(switchBool, animated: true)
       
       
       
        
    }
    func updateResultLabel(){
        
        var regcourses=[String]()
        for(index,s) in courseSWCH.enumerated(){
            if s.isOn{
                regcourses.append(courses[index])
            }
            
        }
        messageLBL.text="CONFIRMATION\(firstNameTF.text!), \(lastNameTF.text!) has successfully enrolled in \(regcourses.count) course(s), namely, \(regcourses.joined(separator: ","))."
        
        
    }
    
    func resetSwitches(){
        for s in courseSWCH{
            s.isOn=false
        }
    }
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetSwitches()
        
        
        
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBAction func onSubmit(_ sender: UIButton) {
       
        var count=0
        var input1 = firstNameTF.text!
        var input2 = lastNameTF.text!
        
        
        let iosSwitch=courseSWCH[0].isOn
        let patternsSwitch=courseSWCH[1].isOn
        let bigdataSwitch=courseSWCH[2].isOn
        if ((input1.isEmpty) || (input2.isEmpty)){
            messageLBL.text = " please enter your full name"

            }
        else if iosSwitch==false && patternsSwitch==false && bigdataSwitch==false {
            messageLBL.text = "Hi \(input1), \(input2) please select courses of your choice"
        }
        else{
            updateResultLabel()
        }
        
        
        



        
    }
    
    
    @IBAction func onReset(_ sender: UIButton) {
        
        firstNameTF.text! = " "
        lastNameTF.text! = " "
       // courseSWCH.isOn = false
        messageLBL.text! = " "
        resetSwitches()
   
    }
    
}



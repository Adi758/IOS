//
//  ViewController.swift
//  PamidalaAlbumApp
//
//  Created by Pamidala,Chandra Adithya on 3/28/23.
//

import UIKit

class RootVC: UIViewController, UITextFieldDelegate {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var loginBTN: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        userNameTF.delegate = self
        passwordTF.delegate = self
        loginBTN.isEnabled = false
        passwordTF.isEnabled = false
        passwordTF.isSecureTextEntry = true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    @IBAction func login(_ sender: Any) {
        
        self.performSegue(withIdentifier: "showAlbum", sender: self)
    }
    
    
    func validateUserName(str: String) -> Void {
        
        passwordTF.isEnabled = false
        if str == AppConstants.username {
            
            passwordTF.isEnabled = true
        }
    }
    
    func validatePassword(str: String) -> Void {
        
        loginBTN.isEnabled = false
        if userNameTF.text == AppConstants.username && str == AppConstants.password{
            
            loginBTN.isEnabled = true
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let currentString = (textField.text ?? "") as NSString
        let newString = currentString.replacingCharacters(in: range, with: string)
        
        if textField == userNameTF {
            
            self.validateUserName(str: newString)
        }else if textField == passwordTF {
            
            self.validatePassword(str: newString)
        }
        return true
    }
    
}


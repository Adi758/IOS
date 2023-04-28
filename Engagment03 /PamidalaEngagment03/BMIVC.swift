//
//  ViewController.swift
//  PamidalaEngagment03
//
//  Created by Pamidala,Chandra Adithya on 4/7/23.
//

import UIKit

class BMIVC: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource {
    
    let feet = Array(1...8)
    let inches = Array(0...11)

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return feet.count + 1
        } else {
            return inches.count + 1
        }
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            if row == 0 {
                return "Feet"
            } else {
                return "\(feet[row-1])"
            }
        } else {
            if row == 0 {
                return "Inches"
            } else {
                return "\(inches[row-1])"
            }
        }
    }

    
    
    @IBOutlet weak var AgeTF: UITextField!
    
    
    @IBOutlet weak var WeightTF: UITextField!
    
    @IBOutlet weak var HeightPicker: UIPickerView!
    
    
    @IBOutlet weak var messageLBL: UILabel!
    
    @IBAction func onCalculate(_ sender: UIButton) {
        
        let A = Int(AgeTF.text!) ?? 0
        let wlbs = Double(WeightTF.text ?? "") ?? 0.0
        let W = wlbs / 2.20462
        let HF = feet[HeightPicker.selectedRow(inComponent: 0)]
        let HI = inches[HeightPicker.selectedRow(inComponent: 1)]
        let height = Double(HF * 12 + HI) * 0.0254
        let LBL = wlbs / (height * height)
        messageLBL.text = " Your body mass index is  \(String(format: "%.1f", LBL))"
        messageLBL.isHidden = false
    }
    
    
    @IBAction func onReset(_ sender: UIButton) {
        HeightPicker.selectRow(0, inComponent: 0, animated: true)
        HeightPicker.selectRow(0, inComponent: 1, animated: true)
        AgeTF.text = ""
        WeightTF.text = ""
        messageLBL.isHidden = false
        messageLBL.text = ""
    }
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        HeightPicker.delegate = self
        HeightPicker.dataSource = self
    }


}


//
//  ViewController.swift
//  PamidalaCalculatorApp
//
//  Created by Pamidala,Chandra Adithya on 2/13/23.
//
import MathExpression
import UIKit

class CalculatorVC: UIViewController {

    @IBOutlet weak var mathExpressionLBL: UILabel!
    
    
    @IBAction func clearExpression(_ sender: UIButton) {
        guard let mL = mathExpressionLBL else {
                      return
                   }
                   // Clear the label by setting its text to an empty string
                   mL.text = ""
    }
    
    @IBAction func backspace(_ sender: UIButton) {
        var pc:String = mathExpressionLBL.text!
                mathExpressionLBL.text = String(pc.dropLast())
    }
    
    @IBAction func flipSign(_ sender: UIButton) {
        var exp = self.mathExpressionLBL.text!
                   if let rt = try? self.evaluate(exp: exp) {
                       if rt == 0 {
                           mathExpressionLBL.text = "0"
                       } else {
                           mathExpressionLBL.text = String(rt * -1)
                       }
                   }
    }
    
    @IBAction func percent(_ sender: UIButton) {
        var exp = self.mathExpressionLBL.text!
                     if let rt = try? self.evaluate(exp: self.mathExpressionLBL.text!) {
                         mathExpressionLBL.text = String(rt / 100)
                     }
    }
    
    @IBAction func naturalLog(_ sender: UIButton) {
        var exp = self.mathExpressionLBL.text!
                        if let rt = try? self.evaluate(exp: exp) {
                            mathExpressionLBL.text = String(log(rt))
                        }
            }
            func fact(_ p: Int) -> Int {
                if p <= 1 {
                    return 1
                }
                return p * fact(p - 1)
    }
    
    @IBAction func factorial(_ sender: UIButton) {
        var exp = self.mathExpressionLBL.text!
                        if let rt = try? self.evaluate(exp: exp) {
                            mathExpressionLBL.text = String(fact(Int(rt)))
                        }
    }
    
    @IBAction func tenPow(_ sender: UIButton) {
        var exp = self.mathExpressionLBL.text!
                       if let rt = try? self.evaluate(exp: exp) {
                           mathExpressionLBL.text = String(pow(10, rt))
                       }
    }
    
    @IBAction func calcSin(_ sender: UIButton) {
        var exp = self.mathExpressionLBL.text!
                      if let rt = try? self.evaluate(exp: exp) {
                          mathExpressionLBL.text = String(sin(rt))
                      }
    }
    
    @IBAction func calcCos(_ sender: UIButton) {
        var exp = self.mathExpressionLBL.text!
               if let rt = try? self.evaluate(exp: exp) {
                        mathExpressionLBL.text = String(cos(rt))
                    }
    }
    
    @IBAction func calcTan(_ sender: UIButton) {
        var exp = self.mathExpressionLBL.text!
                       if let rt = try? self.evaluate(exp: exp) {
                           mathExpressionLBL.text = String(tan(rt))
                       }
    }
    @IBAction func inverse(_ sender: UIButton) {
        var exp = self.mathExpressionLBL.text!
                       if let rt = try? self.evaluate(exp: exp) {
                           mathExpressionLBL.text = String(1 / rt)
                       }
    }
    
    @IBAction func tappedChar(_ sender: UIButton) {
        guard let bT = sender.titleLabel, let bt = bT.text else{
                    return
                }
                guard let expression = self.mathExpressionLBL.text else {return}
                      
                      if bt == "-" || bt == "+" {
                          let e = self.evaluate(exp: expression)
                          self.mathExpressionLBL.text = self.isInteger(e: e) ? "\(Int(e))" : "\(e)"
                    self.mathExpressionLBL.text! += bt == "-" ? "-" : "+"
                    
                }
                else{
                    if bt == "×" || bt == "÷" {
                        let e = self.evaluate(exp: self.mathExpressionLBL.text!)
                        self.mathExpressionLBL.text = self.isInteger(e: e) ? "\(Int(e))" : "\(e)"
                        self.mathExpressionLBL.text! += bt == "÷" ? "/" : "*"
                  
            
                    }
                    
                    
                    
                    
                    
                    else if self.mathExpressionLBL.text == "0"{
                        self.mathExpressionLBL.text! = bt
                    }else{
                        self.mathExpressionLBL.text! += bt
                    }
                }
    }
    
    @IBAction func result(_ sender: UIButton) {
        guard let exp = self.mathExpressionLBL.text else {return}
                let e = self.evaluate(exp: "\(exp + "+0")")
                self.mathExpressionLBL.text = self.isInteger(e: e) ? "\(Int(e))" : "\(e)"
                return
            }
            
            
                private func evaluate(exp: String) -> Double {
                    
                
                do {
                        let exp = try MathExpression(exp)
                    return exp.evaluate()
                        
                    } catch {
                        // Show an error message to the user if the expression cannot be evaluated
                        mathExpressionLBL.text = "Error"
                    }
                    return 0.0
            }
            private func isInteger(e: Double) -> Bool {
                e.truncatingRemainder(dividingBy: 1.0).isZero
    }
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mathExpressionLBL.text = ""
        
    }




}

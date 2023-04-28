//
//  ViewController.swift
//  PamidalaEngagement02
//
//  Created by Pamidala,Chandra Adithya on 3/18/23.
//

import UIKit
import CoreGraphics

class logo: UIView {
    

    override func draw(_ rect: CGRect) {
        var context = UIGraphicsGetCurrentContext()!
        
        // Set the fill color to blue
        context.setFillColor(UIColor.blue.cgColor)
        
        let fs = UIFont.systemFont(ofSize: rect.width / 4)
        let wl: [NSAttributedString.Key: Any] = [.font: fs, .foregroundColor: UIColor.green]
               let gl: [NSAttributedString.Key: Any] = [.font: fs, .foregroundColor: UIColor.white]
        
        
        // Draw a circle with a radius of half of the smaller dimension
        let CX = rect.midX
        let CY = rect.midY
        let r = min(rect.width, rect.height) / 2
        context.addArc(center: CGPoint(x: CX, y: CY), radius: r, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        context.fillPath()
        
        context.setStrokeColor(UIColor.white.cgColor)
                context.setLineWidth(8)
                
        let S = CGPoint(x: rect.width * 0.35, y: rect.height * 0.45)
               let End = CGPoint(x: rect.width * 0.35, y: rect.height * 0.15)
               let P1 = CGPoint(x: rect.width * 0.8, y: rect.height * 0.12)
               let P2 = CGPoint(x: rect.width * 0.8, y: rect.height * 0.98)

        context.move(to: S)
        context.addCurve(to: End, control1: P1, control2: P2)

               // Add the curved part of the "P"
               let Start = CGPoint(x: rect.width * 0.8, y: rect.height * 0.15)
               let E = CGPoint(x: rect.width * 0.10, y: rect.height * 0.20)
               let CP1 = CGPoint(x: rect.width * 0.50, y: rect.height * 0.97)
               let CP2 = CGPoint(x: rect.width * 0.50, y: rect.height * 0.99)
        context.addCurve(to: End, control1: CP1, control2: CP2)

               // Calculate the position of the "P" characters
               let SS = NSAttributedString(string: "P", attributes: wl).size()
        let pX = CX - SS.width / 2
               let pY = CY - SS.height / 2

               // Add the white "P" inside the shape
               let W = NSAttributedString(string: "P", attributes: wl)
               W.draw(at: CGPoint(x: pX, y: pY))

               // Add the green "P" inside the shape
               let G = NSAttributedString(string: "P", attributes: gl)
               G.draw(at: CGPoint(x: pX - 15, y: pY + 0))

               let sh = CAShapeLayer()
        sh.strokeColor = UIColor.white.cgColor
        sh.lineWidth = 5
               //shape.fillColor = nil

               let D = UIImageView(frame: rect)
               D.layer.addSublayer(sh)
                
        
        context.setStrokeColor(UIColor.black.cgColor)
         }}




class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let logo = logo()
        logo.frame = view.frame
        logo.backgroundColor = .white
        view.addSubview(logo)
        
               
       
    }


}


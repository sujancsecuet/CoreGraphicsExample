//
//  CircleButton.swift
//  CoreGraphicsExample
//
//  Created by CBL UH on 4/7/17.
//  Copyright © 2017 CBL UH. All rights reserved.
//

import UIKit

@IBDesignable
class CircleButton: UIButton {

    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        UIColor.blue.setFill()
        path.fill()
        
        drawPlus(rect)
    }
    
    func drawPlus(_ rect: CGRect) {
        let lineHeight: CGFloat = 5.0;
        let lineWidth:CGFloat = min(bounds.width, bounds.height) * 0.6
        
        let plusPath = UIBezierPath()
        plusPath.lineWidth = lineHeight;
        
        plusPath.move(to: CGPoint(
            x:bounds.width/2 - lineWidth/2,
            y:bounds.height/2))
        
        plusPath.addLine(to: CGPoint(
            x:bounds.width/2 + lineWidth/2,
            y:bounds.height/2))

        //set the stroke color
        UIColor.white.setStroke()
        
        //draw the stroke
        plusPath.stroke()
    }
}

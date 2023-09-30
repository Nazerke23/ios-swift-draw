//
//  CustomView.swift
//  Draw
//
//  Created by Назерке Кулан on 11.10.2021.
//

import UIKit

class CustomView: UIView {
    var point1: CGPoint?
    var point2: CGPoint!
    var circlePoint1 : CGPoint?
    var circlePoint2 : CGPoint!
    var trianglePoint1 : CGPoint?
    var trianglePoint2 : CGPoint!
    var rulePoint1 : CGPoint?
    var rulePoint2 : CGPoint!
    
    override func draw(_ rect: CGRect) {
       
//
//        if let p1 = point1{
//            let rect = Rectangle(p1: p1, p2: point2 , color: .systemPink, stroke_width: 5, isFilled: false)
//            rect.drawPath()
//        }
        
      //circle23
//
//        if let p1 = circlePoint1{
//            let circleX = (circlePoint2.x + p1.x)/2
//            let circleY = (circlePoint2.y + p1.y)/2
//            let radius = abs(p1.x - circlePoint2.x)
//
//            let circle = Circle.init(with: CGFloat(radius), and: CGPoint(x:circleX, y:circleY), withSome: .purple, and: 5, isFilled: true)
//            circle.drawPath()
//      }
        
          
//        RECTANGLE57
  
          if let p1 = rulePoint1{
        
            let rule = Rule(p1: CGPoint(x: p1.x, y: p1.y), p2: CGPoint(x: rulePoint2.x, y: rulePoint2.y), color: .yellow, stroke_width: 10, isFilled: false)
            
            rule.drawPath()
        }
            
        
        
        
        
        
        
    }
    
    func drawTriangle() {
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: 150, y: 80))
        path.addLine(to: CGPoint(x: 50, y: 300))
        path.addLine(to: CGPoint(x: 250, y: 300))
        path.close()
        
        path.lineWidth = 5
        UIColor.black.setStroke()
        
        path.stroke()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        //circle23
//        if let touch = touches.first{
//            circlePoint1 = touch.location(in: self)
//            print(circlePoint1)
//        }
        
        //rectangle57
//        if let touch = touches.first{
//            trianglePoint1 = touch.location(in: self)
//            print(trianglePoint1)
//        }
        
        //rule28
        if let touch = touches.first{
            rulePoint1 = touch.location(in: self)
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        //circle23
//        if let touch = touches.first{
//            circlePoint2 = touch.location(in: self)
//            print(circlePoint2)
//        }
       // setNeedsDisplay()
        
        //rectangle57
//        if let touch = touches.first{
//            trianglePoint2 = touch.location(in: self)
//        }
        
        
        //rule28
        if let touch = touches.first{
            rulePoint2 = touch.location(in: self)
        }
        
        
        setNeedsDisplay()
        
    }
    
 
}

extension Double{
    var cg: CGFloat{
        return CGFloat(self)
    }
}

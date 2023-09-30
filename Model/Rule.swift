
import Foundation
import UIKit

class Rule{
    
    
    var p1: CGPoint
    var p2: CGPoint
    var color: UIColor
    var stroke_width: CGFloat = 0.0
    var isFilled: Bool
    
    init(p1: CGPoint, p2:CGPoint, color: UIColor, stroke_width: CGFloat, isFilled: Bool) {
        self.p1 = p1
        self.p2 = p2
        self.color = color
        self.stroke_width = stroke_width
        self.isFilled = isFilled
    }
    
    func drawPath(){
        
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: p1.x, y: p1.y))
        path.addLine(to: CGPoint(x: p2.x, y: p2.y))
        path.close()
        
        path.lineWidth = stroke_width
        color.set()
        
        (isFilled) ? (path.fill()) : (path.stroke())
    }

}

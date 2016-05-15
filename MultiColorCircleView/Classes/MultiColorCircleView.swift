//
//  MultiColorCircleView.swift
//  Pods
//
//  Created by Sanjay on 10/05/16.
//
//

import UIKit

@IBDesignable
public class MultiColorCircleView: UIView {

    public var colors:[UIColor] = [UIColor.blueColor(), UIColor.redColor(), UIColor.greenColor()]
    public var percentages:[Double] = [0.25, 0.625, 0.125]
    
    @IBInspectable public var lineWidth: CGFloat = 3.0
    
    override public func drawRect(rect: CGRect) {
        let fullAngle = 360.0
        var startValue = -90.0
        var endValue = 0.0
        let radius = (self.frame.width < self.frame.height ? self.frame.width / 2 : self.frame.height / 2) - 20
        
        clearCircle()
        
        for i in 0..<colors.count {
            let startAngle = CGFloat(startValue * M_PI / 180)
            endValue = (fullAngle * percentages[i] + startValue)
            let endAngle = CGFloat(endValue * M_PI / 180)
            let center = CGPointMake(self.bounds.width / 2, self.bounds.height / 2)
            let circlePath = UIBezierPath(arcCenter: center, radius: radius , startAngle: startAngle, endAngle: endAngle, clockwise: true)
            
            let shapeLayer = CAShapeLayer()
            shapeLayer.path = circlePath.CGPath
            shapeLayer.fillColor = UIColor.clearColor().CGColor
            shapeLayer.strokeColor = colors[i].CGColor
            shapeLayer.lineWidth = lineWidth
            self.layer.addSublayer(shapeLayer)
            
            startValue = endValue
        }
    }
    
    public func clearCircle() {
        if let layers = self.layer.sublayers {
            for layer in layers {
                if layer is CAShapeLayer {
                    layer.removeFromSuperlayer()
                }
            }
        }
    }

}

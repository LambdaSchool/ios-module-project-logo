//
//  LogoView.swift
//  Drawing
//
//  Created by Nick Nguyen on 2/19/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

import UIKit



class LogoView: UIView {
    
    // public function
    
    fileprivate var strokeColor = UIColor.black
    fileprivate var strokeWidth : Float = 1
    
    func setStrokeWidth(width: Float) {
        self.strokeWidth = width
    }
    
    
    func setStrokeColor(color: UIColor) {
        self.strokeColor = color
    }
    
    func undo() {
        _ = lines.popLast()
        setNeedsDisplay()
    }
    
    func clear() {
        lines.removeAll()
        setNeedsDisplay()
    }
    
    
     var lines = [Line]()
    
    override func draw(_ rect: CGRect) {
        // Custom drawing
        super.draw(rect)
       
      
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        context.setStrokeColor(UIColor.red.cgColor)
        context.beginPath()
        context.move(to: CGPoint(x: 50, y: 50))
        context.setLineWidth(CGFloat(20.0))
        context.addLine(to: CGPoint(x: 50 , y: 250 ))
        context.strokePath()
        

        context.addLines(between: [CGPoint(x: 40, y: 50),CGPoint(x: 360, y: 50)])
        context.strokePath()
        
        
      
        context.addLines(between: [CGPoint(x: 360, y: 40),CGPoint(x: 360, y: 250)])
        context.strokePath()
        
        context.addLines(between: [CGPoint(x: 48, y: 245),CGPoint(x: 200, y: 410)])
        context.strokePath()
        
        context.addLines(between: [CGPoint(x: 360, y: 245),CGPoint(x: 200, y: 410)])
         context.strokePath()
        
        context.setLineWidth(10)
        context.setStrokeColor(UIColor.white.cgColor)
        context.addLines(between: [CGPoint(x: 120, y: 240),CGPoint(x: 200, y: 80)])
          context.strokePath()
        
        context.setLineWidth(10)
        context.setStrokeColor(UIColor.white.cgColor)
        context.addLines(between: [CGPoint(x: 200, y: 80),CGPoint(x: 280, y: 250)])
          context.strokePath()
        
        
        
        context.fillPath()
        lines.forEach { (line) in
            context.setStrokeColor(line.color.cgColor)
            context.setLineWidth(CGFloat(line.strokeWidth))
            context.setLineCap(.round)
                   
            
            for (i , p ) in line.points.enumerated() {
                if i == 0 {
                    context.move(to: p)
                } else {
                    context.addLine(to: p)
                }
            }
        
              context.strokePath()
        }
        
     
    }

   
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        lines.append(Line.init(strokeWidth: strokeWidth, color: strokeColor, points: []))
    }
    
    
    // track the finger as we move across screen
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let point = touches.first?.location(in: nil) else { return }

        
        guard var lastLine = lines.popLast() else { return }
        lastLine.points.append(point)
        lines.append(lastLine)
        
        setNeedsDisplay()
    }
}

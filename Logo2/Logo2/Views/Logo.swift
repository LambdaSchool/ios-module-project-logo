//
//  Logo.swift
//  Logo2
//
//  Created by Bobby Keffury on 9/25/19.
//  Copyright © 2019 Bobby Keffury. All rights reserved.
//

import UIKit
import Foundation

@IBDesignable class Logo: UIView {


       override func draw(_ rect: CGRect) {
           
           if let context = UIGraphicsGetCurrentContext() {
               
               
               // create points that will serve as line markers
               
               let logoCenter = CGPoint(x: rect.size.width / 2, y: rect.size.height / 2)
               
               let topLeft = CGPoint(x: rect.minX, y: rect.minY)
               
               let topRight = CGPoint(x: rect.maxX, y: rect.minY)
               
               let halfLeft = CGPoint(x: rect.minX, y: rect.height * 0.65)
               
               let halfRight = CGPoint(x: rect.maxX, y: rect.height * 0.65)
               
               let bottomMiddle = CGPoint(x: rect.midX, y: rect.maxY)
               
               
               // draw line from top left to 3/4 down the left side
               
               context.move(to: topLeft)
               context.addLine(to: halfLeft)
               
               
               // draw line from 3/4 down left side to middle of bottom
               
               context.addLine(to: bottomMiddle)
               

               // draw line from midde of bottom to 3/4 down right side
               
               context.addLine(to: halfRight)

               // draw line from 3/4 down right side to top right
               
               context.addLine(to: topRight)


               // draw line from top right to top left
               
               context.addLine(to: topLeft)
               

               // fill with red cgcolor

               context.setFillColor(UIColor.red.cgColor)
               
               // draw it on the screen
               
               context.fillPath()
               
               
               
               
               // add another box inside the orinigal box

               let symbolRect = CGRect(x: logoCenter.x - 50, y: logoCenter.y - 75, width: 100, height: 100)
               
               // add points that serve as anchors
               
               let bottomLeft = CGPoint(x: symbolRect.minX, y: symbolRect.maxY)
               let leftAnchor = CGPoint(x: symbolRect.minX + 20, y: symbolRect.maxY)
               let middleAnchor = CGPoint(x: symbolRect.midX, y: symbolRect.midY - 20)
               let rightAnchor = CGPoint(x: symbolRect.maxX - 20, y: symbolRect.maxY)
               let bottomRight = CGPoint(x: symbolRect.maxX, y: symbolRect.maxY)
               let middleRight = CGPoint(x: symbolRect.midX + 10, y: symbolRect.minY)
               let middleLeft = CGPoint(x: symbolRect.midX - 10, y: symbolRect.minY)
               
               
               
               
               // create lambda symbol
               
               
               
             
               context.move(to: bottomLeft)
               context.addLine(to: leftAnchor)
               context.addLine(to: middleAnchor)
               context.addLine(to: rightAnchor)
               context.addLine(to: bottomRight)
               context.addLine(to: middleRight)
               context.addLine(to: middleLeft)
               context.addLine(to: bottomLeft)

               context.setFillColor(UIColor.white.cgColor)
               context.fillPath()
               
           }
       }

}

//
//  MyGuysFaceView.swift
//  Logo
//
//  Created by Marissa Gonzales on 5/13/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import UIKit



@IBDesignable class MyGuysFaceView: UIView {
    override init(frame: CGRect) {
           super.init(frame: frame)
           backgroundColor = UIColor.clear
           
       }
       
       required init?(coder aDecoder: NSCoder) {
           super.init(coder: aDecoder)
       }
       
       // MARK: Please note, the mis-shaped pupils and all other crooked features are intentional. Get a load of this guy
       
       override func draw(_ rect: CGRect) {
           
           if let context = UIGraphicsGetCurrentContext() {
               
               // Face Circle
               context.addEllipse(in: CGRect(x: 0, y: 0, width: 295, height: 295))
               context.setFillColor(#colorLiteral(red: 0.8739272992, green: 0.5996536078, blue: 0.4924759619, alpha: 1))
               context.fillPath()
               
               // Left Eye
               context.addEllipse(in: CGRect(x: 50, y: 130, width: 80, height: 50));
               context.setFillColor(UIColor.black.cgColor)
               context.fillPath()
               
               // Right eye
               context.addEllipse(in: CGRect(x: 175, y: 130, width: 75, height: 50))
               context.setFillColor(UIColor.black.cgColor)
               context.fillPath()
               
               // Left Brow
               context.addRect(CGRect(x: 50, y: 90, width: 70, height: 5))
               context.setFillColor(UIColor.brown.cgColor)
               context.fillPath()
               
               // Right Brow
               context.addRect(CGRect(x: 170, y: 100, width: 90, height: 5))
               context.setFillColor(UIColor.brown.cgColor)
               context.fillPath()
               
               // Right Pupil
               context.addEllipse(in: CGRect(x: 197, y: 141, width: 32, height: 32))
               context.setFillColor(UIColor.white.cgColor)
               context.fillPath()
               
               // Right Pupil 2
               context.addEllipse(in: CGRect(x: 212.5, y: 153, width: 11, height: 10))
               context.setFillColor(UIColor.black.cgColor)
               context.fillPath()
               
               // Left Pupil
               context.addEllipse(in: CGRect(x: 69, y: 140, width: 32, height: 32))
               context.setFillColor(UIColor.white.cgColor)
               context.fillPath()
               
               // Left Pupil 2
               context.addEllipse(in: CGRect(x: 76, y: 148, width: 9.5, height: 9.5))
               context.setFillColor(UIColor.black.cgColor)
               context.fillPath()
               
               // Mouth
               context.addRect(CGRect(x: 75, y: 262, width: 139, height: 7))
               context.setFillColor(UIColor.black.cgColor)
               context.fillPath()
               
               // Corner of smile
               let leftCornerSmile = CGPoint(x: 78, y: 268)
               let rightCornerSmile = CGPoint(x: 212, y: 268)
               let leftCornerSmileDrawPoint = CGPoint(x: 62, y: 219)
               let rightCornerSmileDrawPoint = CGPoint(x: 244, y: 206)
               let leftCornerSmileDrawPoint2 = CGPoint(x: 59, y: 221.5)
               let rightCornerSmileDrawPoint2 = CGPoint(x: 247, y: 207)
               
               // left side of smile
               context.setStrokeColor(UIColor.black.cgColor)
               context.beginPath()
               context.move(to: leftCornerSmile)
               context.setLineWidth(7.0)
               context.addLine(to: leftCornerSmileDrawPoint)
               context.strokePath()
               
               // right side of smnile
               context.setStrokeColor(UIColor.black.cgColor)
               context.beginPath()
               context.move(to: rightCornerSmile)
               context.setLineWidth(7.0)
               context.addLine(to: rightCornerSmileDrawPoint)
               context.strokePath()
               
               //top of smile
               context.setStrokeColor(UIColor.black.cgColor)
               context.beginPath()
               context.move(to: leftCornerSmileDrawPoint2)
               context.setLineWidth(7.0)
               context.addLine(to: rightCornerSmileDrawPoint2)
               context.strokePath()
               
               //teeth points
               let middleTooth = CGPoint(x: 148, y: 212)
               let middleToothBottom = CGPoint(x: 150 , y: 269)
               
               let secondTooth = CGPoint(x: 202, y: 210)
               let secondToothBottom = CGPoint(x: 190 , y: 267)
               
               let thirdTooth = CGPoint(x: 100, y: 219)
               let thirdToothBottom = CGPoint(x: 101, y: 264)
               
               //middle tooth
               context.setStrokeColor(UIColor.black.cgColor)
               context.beginPath()
               context.move(to: middleTooth)
               context.setLineWidth(7.0)
               context.addLine(to: middleToothBottom)
               context.strokePath()
               
               // second tooth
               context.setStrokeColor(UIColor.black.cgColor)
               context.beginPath()
               context.move(to: secondTooth)
               context.setLineWidth(7.0)
               context.addLine(to: secondToothBottom)
               context.strokePath()
               
               // third tooth
               context.setStrokeColor(UIColor.black.cgColor)
               context.beginPath()
               context.move(to: thirdTooth)
               context.setLineWidth(7.0)
               context.addLine(to: thirdToothBottom)
               context.strokePath()
    
               // Nose
               let centerOfFace = CGPoint(x: 155, y: 165)
               let tipOfNose = CGPoint(x: 140, y: 184)
               
               context.setStrokeColor(UIColor.black.cgColor)
               context.beginPath()
               context.move(to: centerOfFace)
               context.setLineWidth(3.0)
               context.addLine(to: tipOfNose)
               context.strokePath()
               
               let centerOfFace2 = CGPoint(x: 145, y: 165)
               let tipOfNose2 = CGPoint(x: 140, y: 185)
               
               context.setStrokeColor(UIColor.black.cgColor)
               context.beginPath()
               context.move(to: centerOfFace2)
               context.setLineWidth(3.0)
               context.addLine(to: tipOfNose2)
               context.strokePath()
               
               // Hair
               let hairStartingPoint = CGPoint(x: 150, y: 0)
               let hairPiece1 = CGPoint(x: 10, y: 70)
               let hairPiece2 = CGPoint(x: 50, y: 80)
               let hairPiece3 = CGPoint(x: 90, y: 90)
               let hairPiece4 = CGPoint(x: 150, y: 100)
               let hairPiece5 = CGPoint(x: 175, y: 90)
               let hairPiece6 = CGPoint(x: 220, y: 90)
               let hairPiece7 = CGPoint(x: 290, y: 70)
               
               context.setStrokeColor(UIColor.black.cgColor)
               context.beginPath()
               context.move(to: hairStartingPoint)
               context.setLineWidth(4.5)
               context.addLine(to: hairPiece1)
               context.strokePath()
               
               context.setStrokeColor(UIColor.black.cgColor)
               context.beginPath()
               context.move(to: hairStartingPoint)
               context.setLineWidth(4.5)
               context.addLine(to: hairPiece2)
               context.strokePath()
               
               context.setStrokeColor(UIColor.white.cgColor)
               context.beginPath()
               context.move(to: hairStartingPoint)
               context.setLineWidth(4.5)
               context.addLine(to: hairPiece3)
               context.strokePath()
               
               context.setStrokeColor(UIColor.black.cgColor)
               context.beginPath()
               context.move(to: hairStartingPoint)
               context.setLineWidth(4.5)
               context.addLine(to: hairPiece4)
               context.strokePath()
               
               context.setStrokeColor(UIColor.black.cgColor)
               context.beginPath()
               context.move(to: hairStartingPoint)
               context.setLineWidth(4.5)
               context.addLine(to: hairPiece5)
               context.strokePath()
               
               context.setStrokeColor(UIColor.white.cgColor)
               context.beginPath()
               context.move(to: hairStartingPoint)
               context.setLineWidth(4.5)
               context.addLine(to: hairPiece6)
               context.strokePath()
               
               context.setStrokeColor(UIColor.black.cgColor)
               context.beginPath()
               context.move(to: hairStartingPoint)
               context.setLineWidth(4.5)
               context.addLine(to: hairPiece7)
               context.strokePath()
       }
       }

}

//
//  CGExtensions.swift
//
//  Created by Jon Bash on 2019-11-06.
//  Copyright © 2019 Jon Bash. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
//   of this software and associated documentation files (the "Software"), to
//   deal in the Software without restriction, including without limitation the
//   rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
//   sell copies of the Software, and to permit persons to whom the Software is
//   furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
//   all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
//   FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
//   DEALINGS IN THE SOFTWARE.
//

import UIKit

extension CGContext {
    func addCurvedPolygon(from points: [(point: CGPoint, radius: CGFloat?)]) {
        if points.count < 3 {
            return
        }
        
        let preStartVector: CGVector = points[0].point.vector(to: points[1].point)
        let vectorToStart = CGVector(angle: preStartVector.angle, magnitude: points[0].radius ?? 0)
        var currentPoint = CGPoint(
            x: points[0].point.x + vectorToStart.dx,
            y: points[0].point.y + vectorToStart.dy
        )
        self.move(to: currentPoint)
        for i in 0 ..< points.count {
            let nextPoint = points[(i + 1) % points.count]
            let vectorToNextPoint = currentPoint.vector(to: nextPoint.point)
            let vectorToNextCurve = CGVector(
                angle: vectorToNextPoint.angle,
                magnitude: vectorToNextPoint.magnitude - (nextPoint.radius ?? 0)
            )
            let nextCurveStart = CGPoint(
                x: currentPoint.x + vectorToNextCurve.dx,
                y: currentPoint.y + vectorToNextCurve.dy
            )
            let vectorNextPointToNextCurveEnd = CGVector(
                angle: nextPoint.point.vector(to: points[(i + 2) % points.count].point).angle,
                magnitude: nextPoint.radius ?? 0
            )
            let nextCurveEnd = CGPoint(
                x: nextPoint.point.x + vectorNextPointToNextCurveEnd.dx,
                y: nextPoint.point.y + vectorNextPointToNextCurveEnd.dy
            )
            
            self.addLine(to: nextCurveStart)
            self.addQuadCurve(to: nextCurveEnd, control: nextPoint.point)
            currentPoint = nextCurveEnd
        }
    }
    
    func addCurvedPolygon(from points: [CGPoint], withRadius radius: CGFloat) {
        let newPoints = points.map { (point) -> (point: CGPoint, radius: CGFloat?) in
            return (point: point, radius: radius)
        }
        addCurvedPolygon(from: newPoints)
    }
}

extension CGPoint {
    func vector(to otherPoint: CGPoint) -> CGVector {
        return CGVector(dx: otherPoint.x - self.x, dy: otherPoint.y - self.y)
    }
}

public extension CGVector {
    init(angle: CGFloat, magnitude: CGFloat) {
        self.init(dx: magnitude * cos(angle), dy: magnitude * sin(angle))
    }
    
    var angle: CGFloat {
        return atan2(dy, dx)
    }

    var magnitude: CGFloat {
        return sqrt((dx * dx) + (dy * dy))
    }
}

//
//  CustomShape.swift
//  DelicieuxCafe
//
//  Created by Meet Brahmbhatt on 20/04/23.
//

import SwiftUI

struct CustomShape: Shape {
    
    func path(in react: CGRect) -> Path {
        return Path { path in
            let pt1 = CGPoint(x: react.width, y: 0)
            let pt2 = CGPoint(x: 0, y: react.height - 100)
            let pt3 = CGPoint(x: 0, y: react.height)
            let pt4 = CGPoint(x: react.width, y: react.height)
            
            path.move(to: pt4)
            path.addArc(tangent1End: pt1, tangent2End: pt2, radius: 20)
            path.addArc(tangent1End: pt2, tangent2End: pt3, radius: 20)
            path.addArc(tangent1End: pt3, tangent2End: pt4, radius: 20)
            path.addArc(tangent1End: pt4, tangent2End: pt1, radius: 20)
        }
    }
}

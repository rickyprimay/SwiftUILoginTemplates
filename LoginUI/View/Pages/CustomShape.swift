//
//  CustomShape.swift
//  LoginUI
//
//  Created by Ricky Primayuda Putra on 09/11/24.
//

import SwiftUI

struct CustomShape: Shape {
    var corner: UIRectCorner
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}

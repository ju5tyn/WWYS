//
//  ButtonClass.swift
//  WWYS
//
//  Created by Justyn Henman on 24/03/2021.
//

import SwiftUI

struct MyButtonStyle: ButtonStyle {
    
    var mainColor: Color
    var secondaryColor: Color
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .background(Capsule()
                            .foregroundColor(configuration.isPressed ? secondaryColor : mainColor))
            .scaleEffect(configuration.isPressed ? CGFloat(0.85) : 1.0)
            .rotationEffect(.degrees(configuration.isPressed ? 0.0 : 0))
            .blur(radius: configuration.isPressed ? CGFloat(0.0) : 0)
            .animation(Animation.spring(response: 0.15000000000000002, dampingFraction: 0.35000000000000003, blendDuration: 1))
    }
}


extension Button {
    func myButtonStyle() -> some View {
        self.buttonStyle(MyButtonStyle(mainColor: .primary, secondaryColor: .secondary))
    }
    
    func yeButtonStyle() -> some View {
        self.buttonStyle(MyButtonStyle(mainColor: .clear, secondaryColor: .clear))
    }
}

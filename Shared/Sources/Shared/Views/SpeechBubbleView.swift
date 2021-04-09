//
//  SpeechBubbleView.swift
//  WWYS
//
//  Created by Justyn Henman on 24/03/2021.
//

import SwiftUI

struct SpeechBubbleView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .padding(10)
            .foregroundColor(.black)
            .background(
                Rectangle()
                    .fill(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 4, x: 0, y: 3)
    
            )
            .animation(.easeInOut(duration: 0.2))
            
            
            
    }
}

struct SpeechBubbleView_Previews: PreviewProvider {
    static var previews: some View {
        SpeechBubbleView(text: "Lorem Ipsum")
            
    }
}

//
//  SpeechBubbleView.swift
//  WWYS
//
//  Created by Justyn Henman on 24/03/2021.
//

import SwiftUI

public struct SpeechBubbleView: View {
    
    public init(_ text: String){
        self.text = text
    }
    
    var text: String
    
    public var body: some View {
        Text(text)
            //.font(.custom("Helvetica Neue", size: 15))
            .bold()
            .padding(10)
            .foregroundColor(.black)
            .minimumScaleFactor(0.2)
            .background(
                
                Rectangle()
                    .fill(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.15), radius: 4, x: 0, y: 3)
    
            )
            .animation(.easeInOut(duration: 0.2))    
    }
}

struct SpeechBubbleView_Previews: PreviewProvider {
    static var previews: some View {
        SpeechBubbleView("Lorem Ipsum")
            
    }
}

import SwiftUI

public struct BubbleView: View{
    
    public init(quote: Quote){
        self.quote = quote
    }
    
    public var quote: Quote
    
    public var body: some View{
        HStack{
            Spacer()
            SpeechBubbleView(quote.quote)
                .opacity(1)
                .padding([.horizontal, .leading], 10)
                .contextMenu {
                    ContextMenuButton(quote, kind: .share)
                    ContextMenuButton(quote, kind: .copy)
                }
        }
        .transition(.move(edge: .bottom))
        .animation(.easeInOut(duration: 0.2))
        
        
        
    }
    
}

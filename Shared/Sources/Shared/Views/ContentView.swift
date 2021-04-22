import SwiftUI
import Combine

public struct ContentView: View {
    
    public init(){
    }
    
    @ObservedObject public var quoteStore = QuoteStore(quoteArr: [])
    
    public var body: some View {
            VStack{
                Spacer()
                HistoryView(store: self.quoteStore)
                    .padding(.trailing)
                YeView(store: self.quoteStore)
                    .padding(.top)
                Spacer()
                FooterView()
            }
    }
}


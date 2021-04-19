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
                QuoteView(store: self.quoteStore)
                    .padding(.top)
                Spacer()
                FooterView()
                
                
                
            }
    }
}

//private struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            ContentView(viewModel: QuoteViewModel())
//                .previewDevice("iPhone 11 Pro")
//
//        }
//    }
//}

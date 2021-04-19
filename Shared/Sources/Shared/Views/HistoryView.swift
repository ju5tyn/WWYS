import SwiftUI

public struct HistoryView: View {
    
    public init(store quoteStore: QuoteStore) {
        self.viewModel = HistoryViewModel(quoteStore: quoteStore)
    }
    
    @ObservedObject public var viewModel: HistoryViewModel
    
    public var body: some View {
        VStack{
            if let quoteArr = viewModel.quoteStore?.quoteArr{
                ForEach(quoteArr, id: \.self){ (quote) in
                    //if quote != quoteArr.last{
                        HStack{
                            Spacer()
                            SpeechBubbleView(quote!.quote)
                                .opacity(1)
                                .padding([.horizontal, .leading], 10)
                                
                            
                        }
                    //}
                }.animation(.easeIn)
            }
        }
    }
}


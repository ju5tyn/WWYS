import SwiftUI

public struct HistoryView: View {
    
    public init(store quoteStore: QuoteStore) {
        self.viewModel = HistoryViewModel(quoteStore: quoteStore)
    }
    
    @ObservedObject public var viewModel: HistoryViewModel
    
    public var body: some View {
        VStack{
            ForEach(viewModel.quoteArr[viewModel.quoteArrRange!], id: \.self){ (quote) in
                BubbleView(quote: quote)
            }
        }
    }
}






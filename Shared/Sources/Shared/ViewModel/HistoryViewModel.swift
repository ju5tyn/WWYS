import Foundation
import Combine

public class HistoryViewModel: ObservableObject {

    public init(quoteStore: QuoteStore?) {
        self.quoteStore = quoteStore
    }
    
    var quoteStore: QuoteStore?
    
}

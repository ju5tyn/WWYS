import Foundation
import Combine

public class HistoryViewModel: ObservableObject {

    public init(quoteStore: QuoteStore?) {
        self.quoteStore = quoteStore
    }
    
    var quoteStore: QuoteStore?
    
    var quoteArr: [Quote] {
        if let qArr = quoteStore?.quoteArr{
            return qArr
        }else{
            return []
        }
        
    }
    
    var quoteArrRange: Range<Int>? {
        if let qArr = quoteStore?.quoteArr{
            if qArr.count < 7{
                return 0..<qArr.count
            }else{
                return qArr.count-7..<qArr.count
            }
        }else{
            return nil
        }
    }
    
}

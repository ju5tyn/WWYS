
import Foundation

public class QuoteStore: ObservableObject{
    
    public init(quoteArr: [Quote]){
        self.quoteArr = quoteArr
    }

    @Published public var quoteArr: [Quote] = [] //{

}

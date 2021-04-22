//
//  QuoteViewModel.swift
//  Shared
//
//  Created by Justyn Henman on 08/04/2021.
//

import Foundation
import Combine

public class QuoteViewModel: ObservableObject {

    public init(quoteStore: QuoteStore?) {
        self.quoteStore = quoteStore
        
        taps
            .map { result in self.networking.loadData() }
            .switchToLatest()
            .sink(receiveValue: { (result) in
                if quoteStore == nil{
                    self.result = result
                }else{
                    if let r = result{
                        self.quoteStore?.quoteArr.append(r)
                    }
                }
                
            })
            //.assign(to: \.result, on: self)
            .store(in: &subscriptions)
            

    }
    
    @Published public var result: Quote?
    @Published public var quoteStore: QuoteStore?
    
    let networking = QuoteUpdate()
    let taps = PassthroughSubject<Void, Never>()
    var subscriptions = Set<AnyCancellable>()
    
    public func getResult() {
        taps.send()
    }
    
}

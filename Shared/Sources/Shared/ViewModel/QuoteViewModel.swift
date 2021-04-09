//
//  QuoteViewModel.swift
//  Shared
//
//  Created by Justyn Henman on 08/04/2021.
//

import Foundation
import Combine

public final class QuoteViewModel: ObservableObject {

    @Published var result: Quote?
    
    let networking = QuoteUpdate()
    let taps = PassthroughSubject<Void, Never>()
    var subscriptions = Set<AnyCancellable>()
    
    public init() {
        taps
            .map { result in self.networking.loadData() }
            .switchToLatest()
            .print("epic")
            .assign(to: \.result, on: self)
            .store(in: &subscriptions)
    }
    
    func getResult() {
        taps.send()
    }
    
}

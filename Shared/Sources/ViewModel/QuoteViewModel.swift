//
//  QuoteViewModel.swift
//  Shared
//
//  Created by Justyn Henman on 08/04/2021.
//

import Foundation
import Combine

class ViewModel: ObservableObject {
    
    @Published var result: Quote?
    
    let taps = PassthroughSubject<Void, Never>()
    
    var subscriptions = Set<AnyCancellable>()
    
    init() {
        taps
            .map { result in loadData() }
            .switchToLatest()
            .assign(to: \.result, on: self)
            .store(in: &subscriptions)
    }
    
    func getResult() {
        taps.send()
    }
    
}

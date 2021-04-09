//
//  QuoteUpdate.swift
//  Shared
//
//  Created by Justyn Henman on 08/04/2021.
//

import Foundation
import Combine

public struct QuoteUpdate{
    
    private let session: URLSession = .shared
    
    public init() {}
    
    let url = URL(string: "https://api.kanye.rest")!

    public func loadData() -> AnyPublisher<Quote?, Never>{
        
        return session
            .dataTaskPublisher(for: url)
            .map { data, _ in
                try? JSONDecoder().decode(Quote.self, from:data)
            }
            .print("Data load")
            .receive(on: RunLoop.main)
            .replaceError(with: nil)
            .eraseToAnyPublisher()
        
    }
    
    
    
}

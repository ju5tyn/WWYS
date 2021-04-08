//
//  QuoteUpdate.swift
//  Shared
//
//  Created by Justyn Henman on 08/04/2021.
//

import Foundation
import Combine

let url = URL(string: "https://api.kanye.rest")!

func loadData() -> AnyPublisher<Quote?, Never>{
    
    return URLSession.shared
        .dataTaskPublisher(for: url)
        .map { data, _ in
            try? JSONDecoder().decode(Quote.self, from:data)
        }
        .print("Data")
        .receive(on: RunLoop.main)
        .replaceError(with: nil)
        .eraseToAnyPublisher()
    
    
}

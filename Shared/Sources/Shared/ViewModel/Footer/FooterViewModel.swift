//
//  File.swift
//  
//
//  Created by Justyn Henman on 20/04/2021.
//

import Foundation

public class FooterViewModel: ObservableObject {
    
    public init(){
        self.showingVersionNumber = false
    }
    
    @Published var showingVersionNumber: Bool
    
    func toggleShowingVersionNumber(){
        showingVersionNumber.toggle()
    }
    
}

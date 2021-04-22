//
//  SwiftUIView.swift
//  
//
//  Created by Justyn Henman on 19/04/2021.
//

import SwiftUI

public struct YeView: View {
    
    public init(store quoteStore: QuoteStore) {
        self.viewModel = QuoteViewModel(quoteStore: quoteStore)
    }
    
    @ObservedObject public var viewModel: QuoteViewModel
    
    public var body: some View {
        LazyVStack {
            HStack{
                Text("tap Kanye to find out →")
                    //.font(.custom("Helvetica Neue", size: 18))
                    .foregroundColor(Color.primary)
                    .opacity((viewModel.quoteStore?.quoteArr.isEmpty)! ? 1 : 0)
                    .animation(.easeInOut(duration: 0.2))
                Spacer(minLength: 50)
                Button(action: {self.viewModel.getResult()}) {
                        YeImage(.large)
                }
                .yeButtonStyle()
            }
            .padding(.horizontal)
        Spacer(minLength: 40)
        }
        
        
    }
}


//
//  SwiftUIView.swift
//  
//
//  Created by Justyn Henman on 19/04/2021.
//

import SwiftUI

public struct QuoteView: View {
    
    public init(store quoteStore: QuoteStore) {
        self.viewModel = QuoteViewModel(quoteStore: quoteStore)
    }
    
    @ObservedObject public var viewModel: QuoteViewModel
    
    public var body: some View {
        LazyVStack {
            HStack{
//                Button(action: {self.viewModel.getResult()}) {
//                    HStack {
//                        Image(systemName: "hand.point.right.fill")
//                            .imageScale(.large)
//                        Text("Find out")
//                            .font(Font.body.bold())
//                    }
//                    .padding()
//                    .foregroundColor(Color.primary)
//                    .colorInvert()
//
//                }
//                .primaryButtonStyle()
                if (viewModel.quoteStore?.quoteArr.isEmpty)!{
                    Text("tap Kanye to find out →")
                        .foregroundColor(Color.white)
                        
                }
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


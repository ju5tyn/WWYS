//
//  SwiftUIView.swift
//  
//
//  Created by Justyn Henman on 19/04/2021.
//

import SwiftUI

public struct FooterView: View {
    
    @ObservedObject var viewModel = FooterViewModel()
    
    
    public var body: some View {
        HStack{
            VStack{
                TitleView(viewModel)
                HStack{
                    if viewModel.showingVersionNumber{
                        VersionView()
                    }else{
                        LinkView()
                    }
                    Spacer()
                }.foregroundColor(.secondary)
                
            }.padding(.leading)
        }
    }
    
    
}





//
//  File.swift
//  
//
//  Created by Justyn Henman on 20/04/2021.
//

import SwiftUI

public struct TitleView: View {
    
    public init(_ viewModel: FooterViewModel){
        self.viewModel = viewModel
    }
    
    @ObservedObject var viewModel: FooterViewModel
    
    public var body: some View{
        HStack{
            Button("what would ye say?") {
                viewModel.toggleShowingVersionNumber()
            }
            //.font(.custom("Helvetica Neue", size: 15))
            .foregroundColor(.primary)
            Spacer()
        }
    }
    
    
}

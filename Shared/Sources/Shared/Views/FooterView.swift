//
//  SwiftUIView.swift
//  
//
//  Created by Justyn Henman on 19/04/2021.
//

import SwiftUI

public struct FooterView: View {
    
    public var body: some View {
        HStack{
            VStack{
                //Divider()
                HStack{
                    Text("what would ye say?")
                    Spacer()
                }
                HStack{
                    Link("by justyn henman", destination: URL(string: "https://justynhenman.com")!)
                        .font(.footnote)
                    Text("·")
                    Link("api: https://kanye.rest", destination: URL(string: "https://kanye.rest")!)
                        .font(.footnote)
                    Spacer()
                        
                }.foregroundColor(.secondary)
                
            }.padding(.leading)
            
        }
    }
}


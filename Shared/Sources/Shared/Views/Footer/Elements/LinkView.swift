//
//  File.swift
//  
//
//  Created by Justyn Henman on 20/04/2021.
//

import SwiftUI

public struct LinkView: View{
    public var body: some View {
        HStack{
            Link("by justyn henman", destination: URL(string: "https://justynhenman.com")!)
                .font(.footnote)
            Text("•")
                .font(.footnote)
            Link("api: https://kanye.rest", destination: URL(string: "https://kanye.rest")!)
                .font(.footnote)
        }
    }
}

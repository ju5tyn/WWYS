//
//  File.swift
//  
//
//  Created by Justyn Henman on 20/04/2021.
//

import SwiftUI

public struct VersionView: View{
    
    let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String

    public var body: some View {
        HStack{
            Text("ver " + appVersion)
                .font(.footnote)
                .foregroundColor(.secondary)
        }
    }
    
    
}

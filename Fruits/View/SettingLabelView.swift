//
//  SettingLabelView.swift
//  Fruits
//
//  Created by Farrukh Makhmudov on 2021/8/19.
//

import SwiftUI

struct SettingLabelView: View {
    
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
        
    }
}

struct SettingLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingLabelView(labelText: "Fructus", labelImage: "info.circle").previewLayout(.sizeThatFits)
            .padding()
    }
}

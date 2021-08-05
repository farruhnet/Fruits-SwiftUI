//
//  SourceLinkView.swift
//  Fruits
//
//  Created by Farrukh Makhmudov on 2021/8/5.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox(){
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.forward.square")
                    
                    .font(.footnote)
            }
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView().previewLayout(.sizeThatFits)
            .padding()
    }
}

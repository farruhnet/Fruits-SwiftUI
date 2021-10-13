//
//  SettingsView.swift
//  Fruits
//
//  Created by Farrukh Makhmudov on 2021/8/19.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    // MARK: - BODY
    
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    //MARK: - SECTION 1
                    
                    GroupBox(
                        label:
                            HStack {
                                Text("Fructus".uppercased()).fontWeight(.bold)
                                Spacer()
                                Image(systemName: "info.circle")
                            }, content: {
                            Text("Content")
                    })
                    //MARK: - SECTION 2
                    
                    //MARK: - SECTION 3
                    
                    Text("Placeholder")
                }
            }//: SCROLL
            .navigationBarTitle(Text("Settings"), displayMode: .large)
            .navigationBarItems(
                trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.green)
                }) )
        }
        .padding()
    }
}


    //MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}

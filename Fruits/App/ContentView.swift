//
//  ContentView.swift
//  Fruits
//
//  Created by Farrukh Makhmudov on 2021/5/24.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    
    @State private var isShowingSettins: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
   
    //MARK: - BODY
    var body: some View {
        
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                   NavigationLink(
                    destination: FruitDetailsView(fruit: item)){
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                   }
                }
            }.navigationTitle("Fruits")
            .navigationBarItems(
                trailing: Button(action: {
                    isShowingSettins = true
                }, label: {
                    Image(systemName: "slider.horizontal.3")
                }).sheet(isPresented: $isShowingSettins, content: {
                    SettingsView()
                })//: BUTTON
            )
            
            
        }//: NAVIGATION
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}

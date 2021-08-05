//
//  FruitDetailsView.swift
//  Fruits
//
//  Created by Farrukh Makhmudov on 2021/8/5.
//

import SwiftUI

struct FruitDetailsView: View {
    
    var fruit: Fruit
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(alignment: .center, spacing: 20, content: {
                    //HEADER
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20, content: {

                        //TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //NUTRIENS
                        FruitNutrientsView(fruit: fruit)
                        
                        // SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    })//: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                })//: VSTACK
            })// : SCROLL
            .edgesIgnoringSafeArea(.top)
        }//: NAVIGATION
        .navigationBarTitle(fruit.title, displayMode: .automatic)
        .navigationBarHidden(false)
    }
}

struct FruitDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailsView(fruit: fruitsData[0])
    }
}

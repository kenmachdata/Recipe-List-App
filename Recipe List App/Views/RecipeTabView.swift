//
//  RecipeTabView.swift
//  Recipe List App
//
//  Created by Kenneth Chatham on 7/29/22.
//

import SwiftUI

struct RecipeTabView: View {
    
    @State var tabIndex = 1
    
    var body: some View {
        
        TabView (selection: $tabIndex){
            
            Text("Featured View Tab: \(tabIndex)")
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
                .tag(1)
            
            RecipeListView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
                .tag(2)
        }
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}

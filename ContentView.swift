//
//  ContentView.swift
//  OnlineStore
//
//  Created by Dinith Hasaranga on 2023-06-22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab = 1
    var body: some View {
        
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                        
                }
            HomeView()

                .tag(1)
                .tabItem {
                    Image(systemName: "house")
                        
                }
            ExpolreView()

                .tag(2)
                .tabItem {
                    Image(systemName: "house.fill")
                        
                }
                .tag(2)
          
           
        }
        .accentColor(.black)
        
        
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
       
            ContentView()
                
    }
}

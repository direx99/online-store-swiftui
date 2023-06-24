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
        VStack{
            TabView(selection: $selectedTab) {
                HomeView()
                    .tag(1)
                    .tabItem {
                        if (selectedTab == 1){
                            Image("home")
                                
                                
                        }
                            else{
                            Image("homei")
                                    
                                   
                        }
                    }
                ExpolreView()
                
                    .tag(2)
                    .tabItem {
                        if (selectedTab == 2){
                            Image("search")
                                
                                
                        }
                            else{
                            Image("searchi")
                                    
                                   
                        }
                        
                    }
                ExpolreView()
                
                    .tag(3)
                    .tabItem {
                        if (selectedTab == 3){
                            Image("cart")
                                
                                
                        }
                            else{
                            Image("cart")
                                    
                                   
                        }
                        
                    }
                WalletView()
                
                    .tag(4)
                    .tabItem {
                        if (selectedTab == 4){
                            Image("user")
                                
                                
                        }
                            else{
                            Image("useri")
                                    
                                   
                        }
                        
                    }
                    
                
                
            }
            
        }
        
        
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
       
            ContentView()
                
    }
}

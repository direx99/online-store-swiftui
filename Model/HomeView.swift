//
//  HomeView.swift
//  OnlineStore
//
//  Created by Dinith Hasaranga on 2023-06-22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        VStack{
            
            HStack{
                VStack(alignment:.leading){
                    Text("Watch Collections")
                        .font(.system(size: 36))
                        .fontWeight(.bold)
                    Text("The best range of smart watches")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        .foregroundColor(.gray)
                    SearchBar()
                }
                
                Spacer()

            }
            Spacer()


        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
                 
                 .padding()

        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


struct SearchBar: View {
    @State var userName : String = ""

    var body: some View{
        HStack{
            HStack{
                Image("SearchIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                    .padding(.leading,10)
                TextField("Search", text: $userName)
                    .padding(.leading,5)
                    .font(.system(size: 20))
            }
            .frame(height: 50)
            
            .background(Color.white)
            
            .cornerRadius(80)
            .shadow(color: Color.gray.opacity(0.3), radius: 50, x: 10, y: 10)
            .shadow(color: Color.gray.opacity(0.3), radius: 50, x: -10, y: -10)
            Image("Filter")
                .resizable()
                .scaledToFit()
                .frame(width: 50)
        }
        .padding(.top)

      
    }
}



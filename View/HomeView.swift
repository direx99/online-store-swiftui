//
//  HomeView.swift
//  OnlineStore
//
//  Created by Dinith Hasaranga on 2023-06-22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            
            VStack{
                
                HStack{
                    VStack(alignment:.leading){
                        Text("Wow Watch")
                            .font(.system(size: 36))
                            .fontWeight(.bold)
                        Text("The best range of smart watches")
                            .font(.system(size: 20))
                            .foregroundColor(.gray)
                            
                            SearchBar()
                        
                        ScrollView(.horizontal){
                            HStack(spacing:20){
                                NavigationLink(destination: ProductView()){
                                    ProductCard()
                                    ProductCard()
                                }
                            }
                            .padding(.vertical,20)
                            
                            
                        }
                        .padding(.trailing,-30)
                        
                        
                        
                    }
                    
                    Spacer()
                    
                }
                Spacer()
                
                
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            
            
            .padding(10)
            .background(Color("BgColor"))
            
            
            
        }
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
                    
                    HStack{
                        Image("SearchIcon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25)
                            .padding(.leading,10)
                        TextField("Search", text: $userName)
                            .padding(.leading,5)
                            .font(.system(size: 20))
                            .foregroundColor(Color("TextGray"))
                        Spacer()

                    }

                }
                .frame(height: 50)
                
                .background(Color.white)
                
                .cornerRadius(80)
                
                Image("Filter")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
                    .padding(.leading,10)
            }
            .padding(.top)
            
    
    }
}

struct ProductCard : View{
    var body: some View{
        VStack{
            HStack{
                Text("TRENDING")
                    .foregroundColor(Color("TextBlue"))
                    .fontWeight(.bold)
                    .font(.system(size: 16))
                    .padding(.top,30)
                    .padding(.leading,30)
                    .padding(.bottom,-10)


                Spacer()
                
            }
            Image("w1")
                .resizable()
                .scaledToFit()
            HStack{
                VStack(alignment: .leading){
                    Text("Series 7")
                        .foregroundColor(Color("TextBlack"))
                        .fontWeight(.bold)
                        .font(.system(size: 24))
                        .padding(.leading,30)
                        .padding(.bottom,1)
                        .padding(.top,10)
                    Group{
                        Text("Apple watch")
                           
                        Text("8+ colors")
                    }
                        .foregroundColor(Color("TextGray"))
                        .fontWeight(.semibold)
                        .font(.system(size: 20))
                        .padding(.leading,30)
                    HStack(){
                        Text("$449")
                            .foregroundColor(Color("TextBlack"))
                            .fontWeight(.heavy)
                            .font(.system(size: 24))
                            .padding(.leading,30)
                            .padding(.top,5)
                        Spacer()
                        Image(systemName: "plus.circle.fill")
                            .font(.system(size: 45))
                            .foregroundColor(Color("TextBlue"))
                            .padding(.trailing,10)
                           

                        
                    }
                    
                }
                    
                .padding(.bottom,20)

                Spacer()
                
            }
            
        }
        .frame(width: 250)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 5, y: 5)

        

    }
}

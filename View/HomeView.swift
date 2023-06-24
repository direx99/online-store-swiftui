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
                        HStack{
                            Text("Hi Dinith ")
                                .font(.system(size: 24))
                                .fontWeight(.bold)
                            Spacer()
                            Image(systemName: "cart")
                                .font(.system(size: 24))
                            .fontWeight(.bold)
                            .padding(.trailing,-10)
                            
                               
                        }
                        .padding(.leading,10)
                        .padding(.top)

                        Text("The best range of smart watches")
                            .font(.system(size: 14))
                            .padding(.leading,10)
                            .fontWeight(.light)
                            .opacity(0.7)
                            .padding(.bottom)

                        VStack{
                            SearchBar()
                                .padding(.bottom,5)
                            Coupen()

                        }
                        .padding(.top,-10)
                        .padding(.trailing,-10)
                        
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack(spacing:20){
                                NavigationLink(destination: ProductView()){
                                    ProductCard(wimg: "x1",name: "Ultra",  brand:"Apple iWatch",price:"$869")
                                    ProductCard(wimg: "s2",name: "S Watch",  brand:"Samsung iWatch",price:"$399")
                                    
                                    ProductCard(wimg: "w2",name: "Series 8",  brand:"Apple iWatch",price:"$469")
                                    
                                  
                                    
                                    ProductCard(wimg: "w1",name: "Series 8",  brand:"Apple iWatch",price:"$469")
                                    
                                    ProductCard(wimg: "s1",name: "S Watch",  brand:"Samsung iWatch",price:"$399")
                                    
                                    ProductCard(wimg: "w3",name: "Series 8",  brand:"Apple iWatch",price:"$469")
                                    
                                    ProductCard(wimg: "s3",name: "S Watch",  brand:"Samsung iWatch",price:"$399")
                                  
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
            
            
            .padding(20)
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
                            .frame(width: 20)
                            .padding(.leading,10)
                        TextField("Search", text: $userName)
                            .padding(.leading,5)
                            .font(.system(size: 14))
                            .foregroundColor(Color("TextGray"))
                        Spacer()

                    }

                }
                .frame(height: 40)
                
                .background(Color.white)
                
                .cornerRadius(80)
                
                Image("Filter")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40)
                    .padding(.leading,10)
            }
            .padding(.top)
            
    
    }
}

struct ProductCard : View{
    @State  var wimg : String
    @State  var name : String
    @State  var brand : String
    @State  var price : String


    var body: some View{
        VStack{
            HStack{
                Text("TRENDING ⚡️")
                    .foregroundColor(Color("TextBlue"))
                    .fontWeight(.bold)
                    .font(.system(size: 12))
                    .padding(.top,20)
                    .padding(.leading,30)
                    .padding(.bottom,10)


                Spacer()
                
            }
            Image("\(wimg)")
                .resizable()
                .scaledToFit()
                .padding(.horizontal,-20)
                .padding(.vertical,-20)
Spacer()
            HStack{
                VStack(alignment: .leading){
                    HStack{
                        Text("\(name)")
                            .foregroundColor(Color("TextBlack"))
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                            .padding(.leading,30)
                            Spacer()
                        HStack(spacing:-15){
                            ColorBtn(colorname: "TextBlack")
                            ColorBtn(colorname: "c1")
                            ColorBtn(colorname: "c2")
                                

                        }
                        
                        .padding(.horizontal,10)
                    }
                    .padding(.bottom,-5)
                    .padding(.top,10)
                    Group{
                        Text("\(brand)")
                           
                        Text("8+ colors")
                            .font(.system(size: 12))
                            .padding(.top,-5)


                    }
                    .padding(.top,-5)

                        .foregroundColor(Color("TextGray"))
                        .font(.system(size: 15))
                        .padding(.leading,30)
                    HStack(alignment:.bottom){
                        Text("\(price)")
                            .foregroundColor(Color("TextBlack"))
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                            .padding(.leading,30)
                            .padding(.top,5)
                      



                        Spacer()
                        Image(systemName: "plus.circle.fill")
                            .font(.system(size: 24))
                            .foregroundColor(Color("TextBlue"))
                            .padding(.trailing,10)
                           
                        
                    }
                    
                }
                    
                .padding(.bottom,20)

                   
                
            }
            .padding(.top,20)
            
            
        }
        .frame(width: 240,height: 400)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 5, y: 5)
        .padding(.trailing,5)
        .padding(.top,10)

        

    }
}


struct Coupen : View {
    var body: some View{
        VStack{
            HStack{
                VStack(alignment: .leading){
                    HStack{
                        VStack(alignment: .leading){
                            Text("20% Off 🔥")
                                .font(.system(size: 20))
                                .fontWeight(.semibold)
                            Text("On your next purchase")
                                .font(.system(size: 14))
                        }
                        Spacer()
                        VStack(alignment: .trailing){
                            Text("CP2020")
                                .foregroundColor(.orange)
                                .font(.system(size: 20))
                                .fontWeight(.semibold)
                            Text("Redeem Code")
                                .font(.system(size: 12))
                                .opacity(0.7)
                            
                        }
                        .padding(.trailing,30)
                        
                    }
                    Spacer()
                    HStack{
                        Text("*Before July 31,2023")
                            .font(.system(size: 10))
                        Spacer()
                        HStack{
                            Text("REDEEM NOW")
                                .font(.system(size: 12))
                                .foregroundColor(.white)
                                
                        }
                        .padding(5)
                        .padding(.horizontal,10)
                        .background(Color.blue)
                        .cornerRadius(50)
                        .padding(.trailing,25)
                        .padding(.top,-5)

                    }
                    
                       
                    
                }
                .padding(.vertical,15)

                Spacer()
            }
            .padding(.leading,35)
            .frame(maxWidth: .infinity)
            .frame(height: 100)
            .background(Color.white)
            .cornerRadius(10)
            .padding(.bottom,-70)
            HStack{
                VStack{
                    
                }
                .frame(width:35,height: 35)
                .background(Color("BgColor"))
                .cornerRadius(40)
                Spacer()
                
                VStack{
                    
                }
                .frame(width:35,height: 35)
                .background(Color("BgColor"))
                .cornerRadius(40)
                
                
            }
            .padding(.horizontal,-18)
           

           
        }
        
        .padding(.bottom,5)
        

        
    }
}

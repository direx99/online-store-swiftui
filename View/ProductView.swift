//
//  ProductView.swift
//  OnlineStore
//
//  Created by Dinith Hasaranga on 2023-06-22.
//

import SwiftUI

struct ProductView: View {
    
    let transition = AnyTransition.asymmetric(insertion: .slide, removal: .scale).combined(with: .opacity)
    let transition2 = AnyTransition.asymmetric(insertion: .slide, removal: .slide).combined(with: .opacity)

    @State private var activeWatch : String = "blue"
    

    var body: some View {
        VStack{
            
            VStack{
                
            }
            .frame(width: 300,height: 100)
            .background(Color("LightGray"))

            VStack{
                
            }
            .frame(width: 300,height: 200)
            .background(Color("LightGray"))
            .cornerRadius(100)
            .padding(.top,-100)

            VStack{
                Text("TRENDING")
                    .foregroundColor(Color("TextBlue"))
                    .fontWeight(.bold)
                    .font(.system(size: 18 ))
                    .padding(.bottom,-10)
                
                if(activeWatch=="blue"){
                    Image("w1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 320,height: 320)
                        .padding(.top,50)
                        .transition(transition2)
                    

                

                }
                else  if(activeWatch=="black"){
                    Image("w2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 320,height: 320)
                        .padding(.top,50)
                        .transition(transition2)


                }
                
               
                
            }
            .animation(.default.speed(0.7))

            .padding(.top,-240)
            ScrollView{
                VStack{
                    HStack{
                        Text("Series 8")
                            .foregroundColor(Color("TextBlack"))
                            .font(.system(size: 28))
                            .fontWeight(.semibold)
                        Spacer()
                        Text("$449")
                            .foregroundColor(Color("TextBlack"))
                            .font(.system(size: 24))
                            .fontWeight(.bold)
                        
                        
                    }
                    HStack{
                        Text("Midnight Aluminum case with Leather Link")
                            .padding(.top,-15)
                            .font(.system(size: 14))

                        Spacer()
                    }
                    HStack(alignment:.bottom){
                        Text("Band Colors")
                            .foregroundColor(Color("TextBlack"))
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                        Spacer()
                        Text("\(activeWatch)")
                            .foregroundColor(Color("TextBlack"))
                            .font(.system(size: 18))
                            .fontWeight(.medium)
                            .transition(transition2)


                        
                        
                    }
                    .padding(.top)
                    HStack(spacing: 10){
                        Button(action: {
                            activeWatch = "blue"
                        }) {
                            ColorBtn(colorname: "TextBlue")
                            
                            
                        }
                        
                        
                        Button(action: {
                            activeWatch = "black"
                            
                        }) {
                            ColorBtn(colorname: "TextBlack")
                            
                        }
                        Button(action: {
                            print("Button tapped!")
                        }) {
                            ColorBtn(colorname: "TextGray")
                        }
                        
                        Spacer()
                    }
                    
                    HStack{
                        Text("The aluminium case is lightweight and mode from 100 precent recycled aerospace-grade alloy ")
                        
                            .foregroundColor(Color("TextGray"))
                            .font(.system(size: 16))
                        +
                        Text("Read More")
                            .foregroundColor(.blue)
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                        Spacer()
                    }
                    .padding(.top)
                    
                    
                    
                }
                .padding(20)
            }
            Spacer()

            HStack{
                Button(action: {
                            // Code to execute when the button is tapped
                            print("Button tapped!")
                }) {
                    
                    Image(systemName: "cart.badge.plus")
                        .symbolRenderingMode(.palette)
                           .foregroundStyle(.blue, .black)
                           .font(.system(size: 20))
                           .padding(10)
                           .overlay(
                                           RoundedRectangle(cornerRadius: 100)
                                               .stroke(Color.gray, lineWidth: 1)
                                       )
                }
                Button(action: {
                            // Code to execute when the button is tapped
                            print("Button tapped!")
                        }) {
                            Text("Add to cart")
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                                .padding()
                                .frame(width: 300)
                                .background(Color.blue)
                                .cornerRadius(100)
                                
                        }
            }

            .animation(.default.speed(0.7))



        }

       
        .toolbar(.hidden, for: .tabBar)

    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
    }
}


struct ColorBtn : View {
    @State var colorname : String = ""

    var body: some View{
        VStack{
            
        }
        .frame(width: 36,height: 36)
        .background(Color("\(colorname)"))
        .cornerRadius(40)
    }
}


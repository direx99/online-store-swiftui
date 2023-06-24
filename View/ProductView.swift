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

    @State private var activeWatch : String = "Space Gray"
    @State private var cart : Bool = false

    

    var body: some View {
        VStack{
            
            VStack{
                
            }
            .frame(width: 300,height: 70)
            .background(Color("LightGray"))

            VStack{
                
            }
            .frame(width: 300,height: 200)
            .background(Color("LightGray"))
            .cornerRadius(100)
            .padding(.top,-100)

            VStack{
                
                
                
                if(activeWatch=="Space Gray"){
                    Image("w1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 320,height: 320)
                        .padding(.top,85)
                        .transition(transition2)
                    

                

                }
                else  if(activeWatch=="Red"){
                    Image("w3")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 320,height: 320)
                        .padding(.top,50)
                        .transition(transition2)


                }
                else  if(activeWatch=="Orrange"){
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
                VStack{
                    HStack{
                        Text(" iWatch")
                            .font(.system(size: 24))
                            .opacity(0.3)
                            .fontWeight(.regular)
                        Text("Series 8")
                            .foregroundColor(Color("TextBlack"))
                            .font(.system(size: 24))
                            .fontWeight(.medium)
                        Spacer()
                       
                        
                        
                    }
                    HStack{
                        Text("Midnight Aluminum case with Leather Link")
                            .padding(.top,-10)
                            .font(.system(size: 14))
                            .opacity(0.7)
                            .fontWeight(.regular)

                        Spacer()
                    }
                    HStack(alignment:.bottom){
                        Text("Band Colors")
                            .foregroundColor(Color("TextBlack"))
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                        Spacer()
                        Text("\(activeWatch)")
                            .foregroundColor(Color("TextBlack"))
                            .font(.system(size: 16))
                            .opacity(0.5)
                            .fontWeight(.medium)
                            .transition(transition2)
                        


                        
                        
                    }
                    .padding(.top)
                    HStack(spacing: 5){
                        Button(action: {
                            activeWatch = "Space Gray"
                        }) {
                            ColorBtn(colorname: "TextBlack")
                            
                            
                        }
                        
                        
                        Button(action: {
                            activeWatch = "Red"
                            
                        }) {
                            ColorBtn(colorname: "c1")
                            
                        }
                        Button(action: {
                            activeWatch = "Orrange"
                        }) {
                            ColorBtn(colorname: "c2")
                            
                            
                        }
                        
                        Spacer()
                    }
                    
                    HStack{
                        Text("The aluminium case is lightweight and mode from 100 precent and 1000 cycles recycled aerospace-grade alloy .  ")
                        
                            .foregroundColor(Color("TextGray"))
                            .font(.system(size: 14))
                        +
                        Text("Read More")
                            .foregroundColor(.blue)
                            .font(.system(size: 14))
                        Spacer()
                    }
                    .padding(.top)
                    HStack(alignment: .bottom){
                        Text("$449")
                            .foregroundColor(Color("TextBlack"))
                            .font(.system(size: 24))
                            .fontWeight(.medium)
                        Text("or $99 by 6 month")
                            .foregroundColor(Color("TextBlack"))
                            .font(.system(size: 14))
                            .fontWeight(.regular)
                            .opacity(0.5)
                            .padding(.bottom,3)
                        Spacer()

                    }
                    .padding(.top)
                    
                }
                .padding(20)
            
            Spacer()

            HStack{
                Button(action: {
                            // Code to execute when the button is tapped
                            
                }) {
                    
                    if cart == true{
                        Image("d")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50)
                            
                    }
                    else{
                        Image("ca")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                            .font(.system(size: 20))
                            .padding(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 100)
                                    .stroke(Color.gray, lineWidth: 2)
                            )
                    }
                }
                if (cart == true){
                    Button(action: {
                        // Code to execute when the button is tapped
                        cart = false
                    }
                           
                    ) {
                        
                        Text("Remove from cart")
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                            .padding()
                            .frame(width: 300)
                            .background(Color.blue)
                            .cornerRadius(100)
                        
                    }
                }
                else {
                    Button(action: {
                        // Code to execute when the button is tapped
                        cart = true
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
        .frame(width: 30,height: 30)
        .background(Color("\(colorname)"))
        .cornerRadius(40)
        .opacity(0.7)
    }
}


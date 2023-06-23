//
//  WalletView.swift
//  OnlineStore
//
//  Created by Dinith Hasaranga on 2023-06-23.
//

import SwiftUI

struct WalletView: View {
    private let mail : String = "dinith.dash@gmail.com"
    var body: some View {
            VStack{
           
            Image("u")
                .resizable()
                .scaledToFit()
                .frame(width: 120)
                .cornerRadius(200)
                .padding(.top,30)
            HStack(alignment: .top){
                Text("Dinith Perera")
                    .fontWeight(.semibold)
                    .font(.system(size: 30))
                Image(systemName: "square.and.pencil")
                    .fontWeight(.medium)
                    .font(.system(size: 15))
            }
                
            Text("Silver Member")
                .fontWeight(.medium)
                .font(.system(size: 15))
                .opacity(0.6)
                .padding(.bottom,30)
            
                VStack{
                    HStack{
                        Text("Email")
                            .fontWeight(.medium)
                            .font(.system(size: 15))


                        Spacer()
                        Text("\(mail)")
                            .foregroundColor(Color.gray)
                            .fontWeight(.medium)
                            .font(.system(size: 15))
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color.gray)
                            .fontWeight(.semibold)
                            .font(.system(size: 12))
                    }
                    .padding(.vertical,2)
                    
                    HStack{
                        
                    }
                    .frame(height: 0.8)
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                    .opacity(0.1)

                    HStack{
                        Text("Country")
                            .fontWeight(.medium)
                            .font(.system(size: 15))


                        Spacer()
                        Text("Sri Lanka 🇱🇰")
                            .foregroundColor(Color.gray)
                            .fontWeight(.medium)
                            .font(.system(size: 15))
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color.gray)
                            .fontWeight(.semibold)
                            .font(.system(size: 12))



                    }
                    .padding(.vertical,2)

                    HStack{
                        
                    }
                    .frame(height: 0.8)
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                    .opacity(0.1)
                    HStack{
                        Text("Telephone")
                            .fontWeight(.medium)
                            .font(.system(size: 15))


                        Spacer()
                        Text("+94769182291")
                            .foregroundColor(Color.gray)
                            .fontWeight(.medium)
                            .font(.system(size: 15))
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color.gray)
                            .fontWeight(.semibold)
                            .font(.system(size: 12))



                    }
                    .padding(.vertical,2)

                    
                    
                }
                .padding()
                .background(Color.white)
                .cornerRadius(15)
            
            
                
                    HStack{
                        
                        VStack{
                            Image("h")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 16)
                        }
                        .frame(width: 30,height: 30)
                        .background(Color("hhh"))
                        .cornerRadius(10)
                        Text("Crisis Support")
                            .fontWeight(.medium)
                            .font(.system(size: 15))
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color.black)
                            .fontWeight(.semibold)
                            .font(.system(size: 12))
                    }
                    .padding(10)
                    .padding(.horizontal,5)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(15)
                    .padding(.top)
                
                VStack{
                    HStack{
                        
                        VStack{
                            Image(systemName: "lock.fill")
                                .font(.system(size: 15))
                                .opacity(0.6)

                               
                        }
                        .frame(width: 30,height: 30)
                        .background(Color("jj"))
                        .cornerRadius(10)
                        Text("Change password")
                            .fontWeight(.medium)
                            .font(.system(size: 15))
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color.black)
                            .fontWeight(.semibold)
                            .font(.system(size: 12))
                    }
                    HStack{
                        
                        VStack{
                            Text("?")
                                .font(.system(size: 15))
                                .fontWeight(.bold)
                                .opacity(0.7)

                        }
                        .frame(width: 30,height: 30)
                        .background(Color("oo"))
                        .cornerRadius(10)
                        Text("Help")
                            .fontWeight(.medium)
                            .font(.system(size: 15))
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color.black)
                            .fontWeight(.semibold)
                            .font(.system(size: 12))
                    }
                    HStack{
                        
                        VStack{
                            Image(systemName: "info")
                                .font(.system(size: 15))
                                .fontWeight(.semibold)
                                .opacity(0.7)
                        }
                        .frame(width: 30,height: 30)
                        .background(Color("hhh"))
                        .cornerRadius(10)
                        Text("The Wow Watch Store")
                            .fontWeight(.medium)
                            .font(.system(size: 15))
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color.black)
                            .fontWeight(.semibold)
                            .font(.system(size: 12))
                    }
                }
                .padding(15)
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .cornerRadius(15)
                .padding(.top)
                
                
            Spacer()
        }
            
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color("BgColor"))


    }
}

struct CreditCard: View {
    var body: some View {
        ZStack{
            Image("Credit")
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
            VStack{
                HStack(alignment: .top){
                    Text("3132 **** **** 1323")
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    Spacer()
                    Image("m")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .frame(width: 80)
                    
                }
                .padding(.top,-1)
                HStack{
                    Text("Card owner")
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                        .opacity(0.7)
                    
                    Spacer()
                }
                .padding(.top,60)

                HStack{
                    Text("Dinith Perera")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                    Spacer()
                   
                    Text("12/26")
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    
                }
                
               
            }
            .padding()
            
                
        }
    }
}

struct WalletView_Previews: PreviewProvider {
    static var previews: some View {
        WalletView()
    }
}


struct Transtaction : View {
    var body: some View{
        HStack{
            Text("watch 8")
            Spacer()
            Text("watch 8")
        }
        .padding()
        .padding(.vertical,20)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.gray.opacity(0.1), radius: 5, x: 5, y: 5)
        .shadow(color: Color.gray.opacity(0.1), radius: 5, x: -15, y: -5)
    }
}

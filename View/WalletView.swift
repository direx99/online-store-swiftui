//
//  WalletView.swift
//  OnlineStore
//
//  Created by Dinith Hasaranga on 2023-06-23.
//

import SwiftUI

struct WalletView: View {
    var body: some View {
        VStack{
           
            Image("u")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
                .cornerRadius(200)
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
            
            HStack{
                VStack{
                    
                }
                .frame(width: 260,height: 20)
                .background(Color(.gray))
                .cornerRadius(20)
                Spacer()
            }
            .frame(width: 360,height: 20)
            .background(Color("BgColor"))
            .cornerRadius(20)
            
            
            CreditCard()
           
                
            Spacer()
        }
        .padding()

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

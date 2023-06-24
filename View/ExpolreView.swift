//
//  ExpolreView.swift
//  OnlineStore
//
//  Created by Dinith Hasaranga on 2023-06-22.
//

import SwiftUI


struct ExpolreView: View {
    let gridItemLayout = [GridItem(.flexible()), GridItem(.flexible())]

    let products: [Product] = [
        Product(id: 1, name: "Series 8", image: "w1",fullName: "apple iwatch series 8 black", type: "Apple"),
       
        Product(id: 2, name: "Watch 5", image: "s1", fullName: "samsung watch 5 gary",type: "Samsung"),
        Product(id: 3, name: "Ultra", image: "x1", fullName: "apple iwatch ultra orrange",type: "Apple"),
        Product(id: 4, name: "Watch 5s", image: "s2", fullName: "samsung watch 5 s white",type: "Samsung"),
        Product(id: 5, name: "Series 7", image: "x3", fullName: "apple iwatch series 8 leather",type: "Apple"),
        Product(id: 6, name: "Watch 5", image: "s3", fullName: "samsung watch 5 black",type: "Samsung"),
        Product(id: 7, name: "Series 8", image: "w3",fullName: "apple iwatch series 8 red",type: "Apple"),
        Product(id: 8, name: "Ultra", image: "x4", fullName: "apple iwatch ultra gary",type: "Apple"),
        Product(id: 9, name: "Product 3", image: "s1", fullName: "samsung watch 3",type: "Samsung"),
        Product(id: 10, name: "Product 4", image: "s2", fullName: "samsung watch 3",type: "Samsung"),
        Product(id: 11, name: "Series 8", image: "w3", fullName: "apple iwatch series 8 red",type: "Apple"),
        Product(id: 12, name: "Product 6", image: "s3", fullName: "samsung watch 3 black",type: "Samsung")
    ]
    
   

    
    @State private var selectedBrand = "All"
    @State private var searchText = ""
    var filteredProducts: [Product] {
            if searchText.isEmpty {
                return products
            } else {
                return products.filter { $0.fullName.localizedCaseInsensitiveContains(searchText) }
            }
        }


    var body: some View {
        NavigationStack{
            VStack{
                
                VStack{
                    HStack{
                        
                        Text("Explore")
                            .font(.system(size: 29))
                            .fontWeight(.medium)
                        
                        Spacer()
                        Image(systemName: "watchface.applewatch.case")
                            .font(.system(size: 25))
                            .fontWeight(.medium)
                            .padding(.trailing,5)
                    }
                    HStack{
                        Text("All Watches here...")
                            .font(.system(size: 19))
                            .opacity(0.2)
                        Spacer()
                    }
                }
                
                SearchBar1(text: $searchText)
                                    .padding(.horizontal)
                                
                
                ScrollView (showsIndicators: false) {
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack{
                            BrandBar(selectedBrand: "All", isSelected: selectedBrand == "All") {
                                selectedBrand = "All"
                                searchText = ""
                            }
                            BrandBar(selectedBrand: "Apple", isSelected: selectedBrand == "Apple") {
                                selectedBrand = "Apple"
                                searchText = "Apple"

                            }
                            BrandBar(selectedBrand: "Samsung", isSelected: selectedBrand == "Samsung") {
                                selectedBrand = "Samsung"
                            }
                            BrandBar(selectedBrand: "oppo", isSelected: selectedBrand == "oppo") {
                                selectedBrand = "oppo"
                            }
                            BrandBar(selectedBrand: "mi", isSelected: selectedBrand == "mi") {
                                selectedBrand = "mi"
                            }
                            BrandBar(selectedBrand: "One Plus", isSelected: selectedBrand == "One Plus") {
                                selectedBrand = "One Plus"
                            }
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            Spacer()
                        }
                    }
                    .padding(.trailing,-20)
                    LazyVGrid(columns: gridItemLayout, spacing: 16) {
                        ForEach(filteredProducts) { product in
                            NavigationLink(destination: ProductView()){
                                SmallProductCard(product: product)
                            }
                        }
                    }
                    .padding(.top)
                }
                .cornerRadius(10)
                .padding(.top,10)
                .padding(.bottom,-30)
                Spacer()
            }
            .padding()
            .padding(.bottom,20)
            .background(Color("BgColor"))
        }
    }

}

struct ExpolreView_Previews: PreviewProvider {
    static var previews: some View {
        ExpolreView()
    }
}

struct BrandBar: View {
    var selectedBrand: String
    var isSelected: Bool
    var onTap: () -> Void
    
    var body: some View {
        VStack {
            Button(action: {
                // Code to execute when the button is tapped
                onTap()
                print("Button tapped!")
            }) {
                Text("\(selectedBrand)")
                    .font(.system(size: 13))
            }
            .foregroundColor(.white)
            .fontWeight(.semibold)
            .padding(5)
            .padding(.horizontal, 10)
            .background(isSelected ? Color.blue : Color("TextGray"))
            .cornerRadius(100)
        }
        
    }
}



import SwiftUI

struct Product: Identifiable {
    let id: Int
    let name: String
    let image: String
    let fullName : String
    let type : String

}

struct SmallProductCard: View {
    let product: Product
    
    var body: some View {
            VStack {
                HStack{
                    Text("\(product.type)")
                        .fontWeight(.regular)
                        .font(.system(size: 12))
                        .foregroundColor(.black)
                        .opacity(0.3)
                        
                    Spacer()
                }
                .padding(.bottom,-10)
                Image(product.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 150)
                HStack(){
                    VStack(alignment: .leading){
                        HStack{
                            Text(product.name)
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                                .foregroundColor(.black)
                            Spacer()
                            Text("$649")
                                .font(.system(size: 16))
                                .foregroundColor(.black)

                        }
                        
                        Text("Apple iWatch")
                            .font(.system(size: 12))
                            .opacity(0.8)
                            .foregroundColor(.black)

                        
                    }
                    Spacer()
                    
                }
            }
            .padding(10)
            .background(Color.white)
            .cornerRadius(15)
        }
    
}

struct SearchBar1: View {
    @Binding var text: String

    var body: some View {
        HStack {
            TextField("Search", text: $text)
                .padding(.vertical, 10)
                .padding(.horizontal, 16)
                .background(Color(.white))
                .cornerRadius(10)
                .font(.system(size: 14))
            
            Button(action: {
                text = ""
            }) {
                Image(systemName: "xmark.circle.fill")
                    .foregroundColor(.gray)
                    .opacity(text.isEmpty ? 0 : 1)
                    .padding(.leading,-35)
            }
        }
        .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 5, y: 5)
        .padding(.horizontal,-20)
       
    }
        
}

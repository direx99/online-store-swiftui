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
        Product(id: 1, name: "Series 8", image: "w1"),
        Product(id: 2, name: "Product 2", image: "w2"),
        Product(id: 3, name: "Product 3", image: "w1"),
        Product(id: 4, name: "Product 4", image: "w2"),
        Product(id: 5, name: "Product 5", image: "w1"),
        Product(id: 6, name: "Product 6", image: "w2")
    ]
    

    
    @State private var selectedBrand = "All"
    var body: some View {
        NavigationStack{
            VStack{
                SearchBar()
                
                ScrollView (showsIndicators: false) {
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack{
                            BrandBar(selectedBrand: "All", isSelected: selectedBrand == "All") {
                                selectedBrand = "All"
                            }
                            BrandBar(selectedBrand: "Apple", isSelected: selectedBrand == "Apple") {
                                selectedBrand = "Apple"
                            }
                            BrandBar(selectedBrand: "oppo", isSelected: selectedBrand == "oppo") {
                                selectedBrand = "oppo"
                            }
                            BrandBar(selectedBrand: "mi", isSelected: selectedBrand == "mi") {
                                selectedBrand = "mi"
                            }
                            BrandBar(selectedBrand: "Samsung", isSelected: selectedBrand == "Samsung") {
                                selectedBrand = "Samsung"
                            }
                            
                            
                            
                            
                            
                            
                            
                            
                            Spacer()
                        }
                    }
                    .padding(.trailing,-20)
                    LazyVGrid(columns: gridItemLayout, spacing: 16) {
                        ForEach(products) { product in
                            NavigationLink(destination: ProductView()){
                                SmallProductCard(product: product)
                            }
                        }
                    }
                    .padding(.top)
                }
                .padding(.top,10)
                .padding(.bottom,-30)
                Spacer()
            }
            .padding()
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
            }
            .foregroundColor(.white)
            .fontWeight(.semibold)
            .padding(10)
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
}

struct SmallProductCard: View {
    let product: Product
    
    var body: some View {
            VStack {
                Image(product.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 150)
                HStack(){
                    VStack(alignment: .leading){
                        HStack{
                            Text(product.name)
                                .font(.headline)
                            Spacer()
                            Text("$649")
                                .font(.system(size: 20))
                        }
                        
                        Text("Apple iWatch")
                            .font(.system(size: 12))
                            .opacity(0.8)
                        
                    }
                    Spacer()
                    
                }
            }
            .padding(10)
            .background(Color.white)
            .cornerRadius(15)
        }
    
}


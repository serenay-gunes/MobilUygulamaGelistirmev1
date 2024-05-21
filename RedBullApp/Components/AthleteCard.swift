//
//  ProductCard.swift
//  RedBullApp
//
//  Created by Serenay Güneş on 27.04.2024.
//

import SwiftUI

struct AthleteCard: View {
    @EnvironmentObject var cartManager: CartManager
    var person: Person
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(person.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                
                VStack(alignment: .leading){
                    Text(person.name)
                        .bold()
                    
                    Text(person.branch)
                        .bold()
                }
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
            .shadow(radius: 3)
        }
    }
}

struct AthleteCard_Previews: PreviewProvider {
    static var previews: some View{
        AthleteCard(person: personList[0])
            .environmentObject(CartManager())
    }
}


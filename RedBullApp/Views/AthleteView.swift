////
//  AthleteView.swift
//
//

import SwiftUI

struct AthleteView: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(personList , id: \.id) { person in
                            AthleteCard(person: person)
                                .environmentObject(cartManager)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Athletes"))
            .toolbar {
                NavigationLink{
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
        

struct AthleteView_Previews: PreviewProvider {
    static var previews: some View {
        AthleteView()
    }
}


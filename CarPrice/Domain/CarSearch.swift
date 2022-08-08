//
//  CarSearch.swift
//  CarPrice
//
//  Created by Jose Neves on 19/06/22.
//

import SwiftUI

struct CarSearch: View {
    @State var selectedBrand: String = "brand"
    @State var selectedModel: String = "model"
    @State var selectedYear: String = "year"
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section("Escolha a Marca") {
                        NavigationLink(destination: SearchOptionsView(searchOption: .brand)) {
                            FilterOption(title: "Marca", description: selectedBrand)
                        }
                        .buttonStyle(.plain)
                    }
                    
                    Section("Escolha o Modelo e o Ano") {
                        NavigationLink(destination: SearchOptionsView(searchOption: .model)) {
                            FilterOption(title: "Brand", description: selectedBrand)
                        }
                        .buttonStyle(.plain)
                        
                        NavigationLink(destination: SearchOptionsView(searchOption: .year)) {
                            FilterOption(title: "Year", description: selectedYear)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .frame(height: 230)
                .scrollDisabled(true)
                
                NavigationLink(destination: CarDetails()) {
                    Text("Pesquisar")
                        .bold()
                        .tint(Color.label)
                        .padding(.all, 16.0)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.label, lineWidth: 2)
                        )
                }
                .navigationTitle("Car Price")
                .navigationBarTitleDisplayMode(.inline)
                
                Spacer()
                
            }
            //        .background(.secondarySystemBackground)
        }
        
    }
}

struct CarSearch_Previews: PreviewProvider {
    static var previews: some View {
        CarSearch()
    }
}

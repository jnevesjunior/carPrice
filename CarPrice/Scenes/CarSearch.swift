//
//  CarSearch.swift
//  CarPrice
//
//  Created by Jose Neves on 19/06/22.
//

import SwiftUI

struct CarSearch: View {
    @State var brand: String = "1"
    @State var model: String = "1"
    @State var year: String = "1"
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section("Escolha a Marca") {
                        Picker("Marca", selection: $brand) {
                            ForEach(["1", "2", "3", "4"], id: \.self) {
                                Text($0)
                            }
                        }
                    }
                    
                    Section("Escolha o Modelo e o Ano") {
                        Picker("Modelo", selection: $model) {
                            ForEach(["1", "2", "3", "4"], id: \.self) {
                                Text($0)
                            }
                        }
                        
                        Picker("Ano", selection: $year) {
                            ForEach(["1", "2", "3", "4"], id: \.self) {
                                Text($0)
                            }
                        }
                    }
                }
                .frame(height: 230)
                .scrollDisabled(true)
                
                NavigationLink(destination: CarDetails()) {
                    Text("Pesquisar")
                        .bold()
                        .tint(.black)
                        .padding(.all, 16.0)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.black, lineWidth: 2)
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

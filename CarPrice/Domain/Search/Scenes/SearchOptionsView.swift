//
//  SearchOptionsView.swift
//  CarPrice
//
//  Created by Jose Neves on 17/07/22.
//

import SwiftUI

enum SearchOption {
    case brand
    case model
    case year
    
    var title: String {
        switch self {
        case .brand: return "Marca"
        case .model: return "Modelo"
        case .year: return "Ano"
        }
    }
}

struct SearchOptionsView: View {
    
    let searchOption: SearchOption
    
    @State var searchText: String = ""
    @State private var options:[Options] = load("options.json")
    
    var body: some View {
        NavigationView {
            VStack{
                TextField("Digite o \(searchOption.title)", text: $searchText)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                
                List {
                    ForEach($options, id: \.self) { option in
                        Text(option.wrappedValue.name)
                    }
                }
            }
        }
        .navigationBarTitle(searchOption.title)
    }
}

struct SearchOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        SearchOptionsView(searchOption: .brand)
    }
}

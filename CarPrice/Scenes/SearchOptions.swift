//
//  SearchOptions.swift
//  CarPrice
//
//  Created by Jose Neves on 17/07/22.
//

import SwiftUI

struct SearchOptions: View {
    enum Option {
        case brand
        case model
        case year
        
        var title: String {
            switch self {
            case .brand: return "Marca"
            case .model: return "Model"
            case .year: return "Ano"
            }
        }
    }
    
    let searchOption: Option
    
    var body: some View {
        NavigationView {
            List {
                
            }
        }
        .navigationBarTitle(searchOption.title)
    }
}

struct SearchOptions_Previews: PreviewProvider {
    static var previews: some View {
        SearchOptions(searchOption: .brand)
    }
}

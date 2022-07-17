//
//  FilterOption.swift
//  CarPrice
//
//  Created by Jose Neves on 17/07/22.
//

import SwiftUI

struct FilterOption: View {
    var title: String
    var description: String
    
    var body: some View {
        HStack {
            Text(title)
            Spacer()
            Text(description)
                .foregroundColor(.gray)
        }
    }
}

struct FilterOption_Previews: PreviewProvider {
    static var previews: some View {
        FilterOption(title: "title", description: "description")
    }
}

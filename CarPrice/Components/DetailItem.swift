//
//  DetailItem.swift
//  CarPrice
//
//  Created by Jose Neves on 18/06/22.
//

import SwiftUI

struct DetailItem: View {
    var title: String
    var description: String
    var alignment: Alignment = .center
    
    var body: some View {
        VStack(alignment: alignment.horizontal) {
            Text(title)
                .font(.system(size: 18, weight: .bold))
            Text(description)
                .font(.system(size: 16))
        }
        .frame(maxWidth: .infinity, alignment: alignment)
        .padding(.all)
        .background(Color.secondarySystemBackground)
        .cornerRadius(12)
    }
}

struct DetailItem_Previews: PreviewProvider {
    static var previews: some View {
        List {
            DetailItem(title: "title",
                       description: "desc wquewquye ueqyweuyqwt ",
                       alignment: .leading)
            .listRowSeparator(.hidden)
            
            DetailItem(title: "title",
                       description: "desc",
                       alignment: .center)
            .listRowSeparator(.hidden)
            
            DetailItem(title: "title",
                       description: "desc",
                       alignment: .trailing)
            .listRowSeparator(.hidden)
        }
    }
}

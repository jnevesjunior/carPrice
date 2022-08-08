//
//  CarDetails.swift
//  CarPrice
//
//  Created by Jose Neves on 14/06/22.
//

import SwiftUI
import Charts

struct CarDetails: View {
    struct ChartData: Identifiable {
        var id = UUID()
        var date: String
        var value: Double
    }
    
    var data: [ChartData]
    {[
        ChartData(date: "Jan/20", value: 10000),
        ChartData(date: "Jun/20", value: 11000),
        ChartData(date: "Dec/20", value: 11500),
        ChartData(date: "Jan/21", value: 20000),
        ChartData(date: "Jun/21", value: 21000),
        ChartData(date: "Jun/22", value: 34154.00),
    ]}
        
    var body: some View {
        NavigationView {
            List {
                VStack(alignment: .center) {
                    Chart(data) {
                        LineMark(
                            x: .value("Month", $0.date),
                            y: .value("Price", $0.value)
                        )
                        PointMark(
                            x: .value("Month", $0.date),
                            y: .value("Price", $0.value)
                        )
                    }
                    .frame(height: 250)
                }
                .listRowSeparator(.hidden)
                
                DetailItem(title: "Modelo",
                           description: "Polo SPORTLINE I MOTION 1.6 T.Flex 5p",
                           alignment: .leading)
                .listRowSeparator(.hidden)

                DetailItem(title: "Preço Médio",
                           description: "R$ 34.154,00",
                           alignment: .leading)
                .listRowSeparator(.hidden)
                
                HStack() {
                    DetailItem(title: "Marca",
                               description: "VW - VolksWagen")
                    
                    Spacer(minLength: 20)
                    
                    DetailItem(title: "Ano Modelo",
                               description: "2010 Gasolina")
                }
                .listRowSeparator(.hidden)
                
                HStack() {
                    DetailItem(title: "Código Fipe",
                               description: "005295-7")
                    
                    Spacer(minLength: 20)
                    
                    DetailItem(title: "Autenticação",
                               description: "q7scrs6db9p")
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            
        }
        .navigationBarTitle("Detalhes")
    }
}

struct CarDetails_Previews: PreviewProvider {
    static var previews: some View {
        CarDetails()
    }
}

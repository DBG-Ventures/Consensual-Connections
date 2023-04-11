//
//  DailySalesView.swift
//  Consensual Connections
//
//  Created by BoiseITGuru on 4/11/23.
//

import SwiftUI
import Charts

struct DailySalesView: View {
    @EnvironmentObject var props: AppProperties
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("Daily Sales")
                .font(.title3.bold())
            
            Chart {
                ForEach(dailySales) { sale in
                    // MARK: Area Mark For Gradient BG
                    AreaMark(x: .value("Time", sale.time), y: .value("Sale", sale.sales))
                        .foregroundStyle(.linearGradient(colors: [
                            Color.orange.opacity(0.6),
                            Color.orange.opacity(0.5),
                            Color.orange.opacity(0.3),
                            Color.orange.opacity(0.1),
                            .clear
                        ], startPoint: .top, endPoint: .bottom))
                        .interpolationMethod(.catmullRom)
                    
                    // MARK: Line Mark
                    LineMark(x: .value("Time", sale.time), y: .value("Sale", sale.sales))
                        .foregroundStyle(Color.orange)
                        .interpolationMethod(.catmullRom)
                    
                    // MARK: Point Mark For Showing Points
                    PointMark(x: .value("Time", sale.time), y: .value("Sale", sale.sales))
                        .foregroundStyle(Color.orange)
                }
            }
            .frame(height: 180)
        }
        .padding(15)
        .background {
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(.gray.opacity(0.5))
        }
        .frame(minWidth: props.isiPad ? props.size.width - 400 : props.size.width - 30)
    }
}

struct DailySalesView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  HomeView.swift
//  Consensual Connections
//
//  Created by BoiseITGuru on 4/11/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            InfoCards()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    DailySalesView()
                    PieChartView()
                }
                .padding(.horizontal, 15)
            }
            .padding(.horizontal, -15)
            
            TrendingItemsView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

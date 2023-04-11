//
//  TrendingItemsView.swift
//  Consensual Connections
//
//  Created by BoiseITGuru on 4/11/23.
//

import SwiftUI

struct TrendingItemsView: View {
    @EnvironmentObject var props: AppProperties
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("Trending Dishes")
                .font(.title3.bold())
                .padding(.bottom)
            
            let isAdoptable = props.isiPad && !props.isMaxSplit
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: isAdoptable ? 2 : 1), spacing: isAdoptable ? 20 : 15) {
                ForEach(trendingDishes) { item in
                    HStack(spacing: 15) {
                        Image(systemName: "fork.knife.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                            .padding(10)
                            .background {
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .fill(Color.orange.opacity(0.1))
                            }
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text(item.title)
                                .fontWeight(.bold)
                                .lineLimit(1)
                            
                            Label {
                                Text(item.title)
                                    .foregroundColor(Color.orange)
                            } icon: {
                                Text("\(item.subTitle):")
                            }
                            .font(.callout)
                            .fontWeight(.semibold)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .overlay(alignment: .topTrailing, content: {
            Button("View All") {}
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundColor(Color.orange)
                .offset(y: 6)
        })
        .padding(15)
        .background {
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(.gray.opacity(0.5))
        }
    }
}

struct TrendingItemsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

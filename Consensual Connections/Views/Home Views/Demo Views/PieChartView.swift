//
//  PieChartView.swift
//  Consensual Connections
//
//  Created by BoiseITGuru on 4/11/23.
//

import SwiftUI

struct PieChartView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("Total Income")
                .font(.title2.bold())
            
            ZStack {
                Circle()
                    .trim(from: 0.5, to: 1)
                    .stroke(.red, style: StrokeStyle(lineWidth: 15, lineCap: .round, lineJoin: .round))
                
                Circle()
                    .trim(from: 0.2, to: 0.5)
                    .stroke(.yellow, style: StrokeStyle(lineWidth: 15, lineCap: .round, lineJoin: .round))
                
                Circle()
                    .trim(from: 0, to: 0.2)
                    .stroke(.green, style: StrokeStyle(lineWidth: 15, lineCap: .round, lineJoin: .round))
                
                Text("$200k")
                    .font(.title)
                    .fontWeight(.heavy)
            }
            .padding(8)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            HStack(spacing: 15) {
                Label {
                    Text("Food")
                        .font(.caption)
                } icon: {
                    Image(systemName: "circle.fill")
                        .font(.caption2)
                        .foregroundStyle(.green)
                }
                
                Label {
                    Text("Drink")
                        .font(.caption)
                } icon: {
                    Image(systemName: "circle.fill")
                        .font(.caption2)
                }
                
                Label {
                    Text("Other")
                        .font(.caption)
                } icon: {
                    Image(systemName: "circle.fill")
                        .font(.caption2)
                        .foregroundStyle(.yellow)
                }
            }
        }
        .padding(15)
        .frame(width: 250, height: 250)
        .background {
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(.gray.opacity(0.5))
        }
    }
}

struct PieChartView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

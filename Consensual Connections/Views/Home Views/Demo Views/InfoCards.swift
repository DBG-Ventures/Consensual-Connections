//
//  InfoCards.swift
//  Consensual Connections
//
//  Created by BoiseITGuru on 4/11/23.
//

import SwiftUI

struct InfoCards: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 18) {
                ForEach(infos) { info in
                    VStack(alignment: .leading, spacing: 18) {
                        HStack(spacing: 15) {
                            Text(info.title)
                                .font(.title3.bold())
                            
                            Spacer()
                            
                            HStack(spacing: 8) {
                                Image(systemName: info.loss ? "arrow.down" : "arrow.up")
                                Text("\(info.percentage)%")
                            }
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundColor(info.loss ? .red : .green)
                        }
                        
                        HStack(spacing: 15) {
                            Image(systemName: info.icon)
                                .font(.title3)
                                .foregroundColor(.white)
                                .frame(width: 45, height: 45)
                                .background {
                                    Circle()
                                        .fill(info.iconColor)
                                }
                            
                            Text(info.amount)
                                .font(.title.bold())
                        }
                    }
                    .padding()
                    .background {
                        RoundedRectangle(cornerRadius: 15, style: .continuous)
                            .fill(.gray.opacity(0.5))
                    }
                }
            }
        }
    }
}

struct InfoCards_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

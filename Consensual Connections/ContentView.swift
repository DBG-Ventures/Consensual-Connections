//
//  ContentView.swift
//  Consensual Connections
//
//  Created by BoiseITGuru on 4/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ResponsiveView { props in
            RouterView(props: props)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

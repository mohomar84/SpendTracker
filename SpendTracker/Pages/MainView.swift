//
//  SwiftUIView.swift
//  SpendTracker
//
//  Created by Mohamed Omar on 31/08/2023.
//

import SwiftUI

struct MainView: View {
    @State var selectedTab: Tab = .home
    
    var body: some View {
        TabView(selection: $selectedTab) {
            ReceiptScannerView()
                        .tabItem {
                            Image(systemName: "camera")
                            Text("Home")
                        }
                        .tag(Tab.home)
                    ReceiptDataView()
                        .tabItem {
                            Image(systemName: "person")
                            Text("More") }
                        .tag(Tab.more)
        }.navigationBarHidden(true).accentColor(.blue)
            }
    }

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

extension MainView {
    enum Tab: Hashable {
        case home
        case more
    }
}

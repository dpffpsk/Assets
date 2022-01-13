//
//  ContentView.swift
//  MyAssets
//
//  Created by 이니텍 on 2022/01/07.
//

import SwiftUI

struct ContentView: View {
    //하단에 들어갈 Tab(기본 설정 asset Tab)
    @State private var selection: Tab = .asset
    
    enum Tab {
        case asset
        case recommend
        case alert
        case setting
    }
    
    var body: some View {
        //TabView
        TabView(selection: $selection) {
            
            //TabItem 설정
            AssetView().tabItem {
                Image(systemName: "dollarsign.circle.fill")
                Text("자산")
            }.tag(Tab.asset)
            
            Color.purple.edgesIgnoringSafeArea(.all).tabItem {
                Image(systemName: "hand.thumbsup.fill")
                Text("추천")
            }.tag(Tab.recommend)
            
            Color.yellow.edgesIgnoringSafeArea(.all).tabItem {
                Image(systemName: "bell.fill")
                Text("알림")
            }.tag(Tab.alert)
            
            Color.pink.edgesIgnoringSafeArea(.all).tabItem {
                Image(systemName: "gearshape.fill")
                Text("설정")
            }.tag(Tab.setting)
        }
    }
}

//preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

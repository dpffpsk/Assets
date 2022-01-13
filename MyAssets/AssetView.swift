//
//  AssetView.swift
//  MyAssets
//
//  Created by 이니텍 on 2022/01/12.
//

import SwiftUI

struct AssetView: View {
    
    //stack이나 grid의 경우 scrollView를 포함하고 있지 않기 때문에 scrollView를 따로 넣어줘야 함
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 30) {
                    Spacer()
                    AssetMenuGridView()
                    AssetBannerView().aspectRatio(5/2, contentMode: .fit)
                    AssetSummaryView().environmentObject(AssetSummaryData())
                }
            }
            .background(Color.gray.opacity(0.2))
            .navigationBarWithButtonStyle("내 자산")
        }
    }
}

//preview
struct AssetView_Previews: PreviewProvider {
    static var previews: some View {
        AssetView()
    }
}

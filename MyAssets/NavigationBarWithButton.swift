//
//  NavigationBarWithButton.swift
//  MyAssets
//
//  Created by 이니텍 on 2022/01/12.
//

import SwiftUI

struct NavigationBar_WithButton: ViewModifier {
    var title: String = ""
    
    func body(content: Content) -> some View {
        //NavigationBarItem
        return content.navigationBarItems(
            leading: Text(title).font(.system(size: 24, weight: .bold)).padding(),
            trailing: Button(action: {print("자산추가버튼 tapped")},
                             label: {Image(systemName: "plus")
                                 Text("자산추가").font(.system(size: 12))}
                            ).accentColor(.black).padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8)).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black))
            )
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                let appearance = UINavigationBarAppearance()
                appearance.configureWithTransparentBackground()
                appearance.backgroundColor = UIColor(white: 1, alpha: 0.5)
                UINavigationBar.appearance().standardAppearance = appearance
                UINavigationBar.appearance().compactAppearance = appearance
                UINavigationBar.appearance().scrollEdgeAppearance = appearance
            }
    }
}

//뷰가 직접 사용할 수 있게
extension View {
    func navigationBarWithButtonStyle(_ title: String) -> some View {
        return self.modifier(NavigationBar_WithButton(title: title))
    }
}

struct NavigationBar_WithButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Color.gray.edgesIgnoringSafeArea(.all).navigationBarWithButtonStyle("내 자산")
        }
//        NavigationBar_WithButton()
    }
}

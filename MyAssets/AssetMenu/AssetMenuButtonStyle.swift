//
//  AssetMenuButtonStyle.swift
//  MyAssets
//
//  Created by 이니텍 on 2022/01/12.
//

import SwiftUI

//반복되는 버튼 스타일 지정
//swiftui에서 제공하는 ButtonStyle 사용
struct AssetMenuButtonStyle: ButtonStyle {
    let menu: AssetMenu
    
    func makeBody(configuration: Configuration) -> some View {
        return VStack {
            Image(systemName: menu.systemImageName).resizable().frame(width: 30, height: 30, alignment: .center).padding([.leading, .trailing], 10) //padding([.leading, .trailing], 10) -> 오른쪽,왼쪽만 10 padding
            Text(menu.title).font(.system(size: 12, weight: .bold))
        }
        .padding()
        .foregroundColor(.blue)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 10)) //둥근 사각형으로
    }
}

//preview
struct AssetMenuButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        HStack(spacing: 24) {
            Button("") {
                print("")
            }
            .buttonStyle(AssetMenuButtonStyle(menu: .creditScore))
            
            Button("") {
                print("")
            }
            .buttonStyle(AssetMenuButtonStyle(menu: .bankAccount))
            
            Button("") {
                print("")
            }
            .buttonStyle(AssetMenuButtonStyle(menu: .creditCard))
            
            Button("") {
                print("")
            }
            .buttonStyle(AssetMenuButtonStyle(menu: .cash))
            
            
        }
    }
}

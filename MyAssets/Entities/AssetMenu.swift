//
//  AssetMenu.swift
//  MyAssets
//
//  Created by 이니텍 on 2022/01/12.
//

import Foundation

enum AssetMenu: String, Identifiable, Decodable {
    case creditScore
    case bankAccount
    case investment
    case loan
    case insurance
    case creditCard
    case cash
    case realEstate
    
    //Identifiable 프로토콜을 사용할 경우, id 프로퍼티를 선언해야함
    var id: String {
        return self.rawValue
    }
    
    //다른 곳(시스템이미지)에서 편리하게 접근할 수 있도록 systemImageName 지정
    var systemImageName: String {
        switch self {
        case .creditScore:
            return "number.circle"
        case .bankAccount:
            return "banknote"
        case .investment:
            return "bitcoinsign.circle"
        case .loan:
            return "hand.wave"
        case .insurance:
            return "lock.shield"
        case .creditCard:
            return "creditcard"
        case .cash:
            return "dollarsign.circle"
        case .realEstate:
            return "house.fill"
        }
    }
    
    var title: String {
        switch self {
        case .creditScore:
            return "신용점수"
        case .bankAccount:
            return "계좌"
        case .investment:
            return "투자"
        case .loan:
            return "대출"
        case .insurance:
            return "보험"
        case .creditCard:
            return "카드"
        case .cash:
            return "현금영수증"
        case .realEstate:
            return "부동산"
        }
    }
}

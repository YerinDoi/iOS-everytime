//
//  ReactionView.swift
//  enurytime
//
//  Created by 박예린 on 8/8/24.
//

import Foundation
import UIKit

final class ReactionView: UIStackView {
    
    private let likeButton: UIButton = {
        let button = UIButton()
        button.setTitle("0", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        button.setTitleColor(UIColor(r: 198, g: 41, b: 23), for: .normal)
        button.setImage(UIImage(named: "main_like_icon"), for: .normal)
        //  버튼의 전체 공간을 콘텐츠가 채우도록
        button.contentVerticalAlignment = .fill
        button.contentHorizontalAlignment = .fill
        // 버튼의 이미지에 대한 여백을 설정
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -3, bottom: 0, right: 0)
        return button
    }()
    
    private let commentButton: UIButton = {
        let button = UIButton()
        button.setTitle("0", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        button.setTitleColor(UIColor(r: 89, g: 177, b: 187), for: .normal)
        button.setImage(UIImage(named: "main_comment_icon"), for: .normal)
        // 콘텐츠가 버튼의 전체 공간을 채우도록
        button.contentVerticalAlignment = .fill
        button.contentHorizontalAlignment = .fill
        // 버튼의 이미지에 대한 여백을 설정
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -3, bottom: 0, right: 0)
        return button
    }()
    
    // UIView(혹은 UIStackView가 상속된 경우)의 초기화 메서드 중 하나
    // 지정된 CGRect 프레임을 사용하여 인스턴스를 초기화
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.spacing = 6
        self.axis = .horizontal
        self.addArrangedSubview(self.likeButton)
        self.addArrangedSubview(self.commentButton)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

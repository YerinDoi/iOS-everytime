//
//  ReplyReactionView.swift
//  enurytime
//
//  Created by 박예린 on 8/12/24.
//

import Foundation
import UIKit

final class ReplyReactionView: UIStackView {
    
    private let commentButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "detail_reply_comment"), for: .normal)
        return button
    }()
    
    private let likeButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "detail_reply_like"), for: .normal)
        return button
    }()
    
    private let moreButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "detail_reply_more"), for: .normal)
        return button
    }()
    
    private let backgroundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .init(w: 249)
        view.layer.cornerRadius = 4
        // 뷰의 경계 바깥으로 나가는 콘텐츠를 잘라내는 역할
        view.clipsToBounds = true
        // 모서리가 둥근 뷰에서 둥근 모서리 외부로 나가는 자식 뷰의 내용도 잘려서 표시
        return view
    }()
    
    // UIView 객체를 생성하여 반환하는 사용자 정의 메서드
    private func makeSeparator() -> UIView {
        // makeSeparator() 메서드에서 생성되는 객체로, 화면에 표시되는 UI 요소
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .init(w: 214)
        NSLayoutConstraint.activate([
            view.widthAnchor.constraint(equalToConstant: 1),
            view.heightAnchor.constraint(equalToConstant: 8)
        ])
        return view
    }
    
    // 뷰의 위치와 크기를 설정하는 초기화 메서드
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.spacing = 0
        self.axis = .horizontal
        self.alignment = .center
        
        self.addSubview(self.backgroundView)
        NSLayoutConstraint.activate([
            self.backgroundView.topAnchor.constraint(equalTo: self.topAnchor),
            self.backgroundView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.backgroundView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.backgroundView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
        
        self.addArrangedSubview(self.commentButton)
        self.addArrangedSubview(self.makeSeparator())
        self.addArrangedSubview(self.likeButton)
        self.addArrangedSubview(self.makeSeparator())
        self.addArrangedSubview(self.moreButton)
        
        [self.commentButton, self.likeButton, self.moreButton].forEach { button in
            button.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                button.widthAnchor.constraint(equalToConstant: 36),
                button.topAnchor.constraint(equalTo: self.topAnchor),
                button.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            ])
        }
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

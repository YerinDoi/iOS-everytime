//
//  DetailContentView.swift
//  enurytime
//
//  Created by 박예린 on 8/12/24.
//

import Foundation
import UIKit

// final은 상속 방지 역할 -> 컴파일러 최적화
final class DetailContentView: UITableViewHeaderFooterView {
    
    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "detail_main_profile")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let nicknameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "익명"
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.textColor = UIColor(w: 41)
        label.textAlignment = .left
        label.numberOfLines = 1
        return label
    }()
    
    private let timeLable: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "08/30 20:54"
        label.font = UIFont.systemFont(ofSize: 13, weight: .medium)
        label.textColor = UIColor(w: 166)
        label.textAlignment = .left
        label.numberOfLines = 1
        return label
    }()
    
    private let titleLable: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "ㅋㅋ 나도 고민 중"
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = UIColor(w: 68)
        label.textAlignment = .left
        label.numberOfLines = 0
        return label
    }()
    
    private let reactionView = ReactionView()
    
    private let nicknameContainer: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 3
        return stackView
    }()
    
    private let container: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 3
        return stackView
    }()
    
    // UITableViewHeaderFooterView의 인스턴스 생성 시 초기화 메서드 재정의
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        // 본문 배경 설정
        self.backgroundView = UIView()
        self.backgroundView?.backgroundColor = .white
        
        self.addSubview(self.profileImageView)
        self.addSubview(self.nicknameLabel)
        self.addSubview(self.timeLable)
        self.addSubview(self.titleLable)
        self.addSubview(self.reactionView)
        
        self.reactionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.profileImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            self.profileImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            self.profileImageView.widthAnchor.constraint(equalToConstant: 36),
            self.profileImageView.heightAnchor.constraint(equalToConstant: 36),
            self.nicknameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            self.nicknameLabel.leadingAnchor.constraint(equalTo: self.profileImageView.trailingAnchor, constant: 8),
            self.timeLable.topAnchor.constraint(equalTo: self.nicknameLabel.bottomAnchor),
            self.timeLable.leadingAnchor.constraint(equalTo: self.profileImageView.trailingAnchor, constant: 8),
            self.titleLable.topAnchor.constraint(equalTo: self.profileImageView.bottomAnchor, constant: 6),
            self.titleLable.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            self.titleLable.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
            self.titleLable.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -44),
            self.reactionView.heightAnchor.constraint(equalToConstant: 16),
            self.reactionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            self.reactionView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

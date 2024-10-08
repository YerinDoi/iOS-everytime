//
//  MainCell.swift
//  enurytime
//
//  Created by 박예린 on 8/8/24.
//

import Foundation
import UIKit

final class  MainCell: UITableViewCell {
    
    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "main_profile_icon")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let nicknameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.textColor = UIColor(w: 41)
        label.text = "익명"
        label.numberOfLines = 1
        return label
    }()
    
    private let timeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = UIColor(w: 166)
        label.text = "27분 전"
        label.numberOfLines = 1
        return label
    }()
    
    private let nicknameContainer: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 6
        return stackView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = UIColor(w: 68)
        label.textAlignment = .left
        label.text = "오늘 자료구조 첫 수업 듣고 고민하는 사람 얼마나 있어? 드랍할지 말지 고민중"
        label.numberOfLines = 0
        return label
    }()
    
    private let reactionView = ReactionView()
    
    private let separator: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(w: 237)
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .white
        
        // contentView : UITableViewCell의 기본 속성 중 하나로, 셀의 모든 콘텐츠를 포함하는 뷰
        self.contentView.addSubview(self.nicknameContainer)
        self.contentView.addSubview(self.titleLabel)
        self.contentView.addSubview(self.reactionView)
        self.contentView.addSubview(self.separator)
        
        self.nicknameContainer.addArrangedSubview(self.profileImageView)
        self.nicknameContainer.addArrangedSubview(self.nicknameLabel)
        self.nicknameContainer.addArrangedSubview(self.timeLabel)
        
        self.reactionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            // MainCell 상단 부분
            self.nicknameContainer.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 15),
            self.nicknameContainer.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 24),
            self.nicknameContainer.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -24),
            self.nicknameContainer.heightAnchor.constraint(equalToConstant: 24),
            // 이미지 뷰 크기 정하기
            self.profileImageView.widthAnchor.constraint(equalToConstant: 24),
            self.profileImageView.heightAnchor.constraint(equalToConstant: 24),
            
            // MainCell 중단 부분
            self.titleLabel.topAnchor.constraint(equalTo: self.nicknameContainer.bottomAnchor, constant: 4),
            self.titleLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 24),
            self.titleLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -24),
            self.titleLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant:  -24), 
            
            // MainCell 하단 부분
            self.reactionView.heightAnchor.constraint(equalToConstant: 16),
            self.reactionView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -30),
            self.reactionView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -6),
            
            
            // 구분선
            self.separator.heightAnchor.constraint(equalToConstant: 1),
            self.separator.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 8),
            self.separator.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -8),
            self.separator.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupData(data: String) {
        self.titleLabel.text = data
    }
 }
 

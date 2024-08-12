//
//  DetailReplyCell.swift
//  enurytime
//
//  Created by 박예린 on 8/11/24.
//

import Foundation
import UIKit

final class DetailReplyCell: UITableViewCell {
    
    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "detail_reply_profile")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let nicknameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "익명"
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.textColor = UIColor(w: 41)
        label.textAlignment = .left
        label.numberOfLines = 1
        return label
    }()
    
    private let nicknameContainer: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 3
        return stackView
    }()
    
    private let replyReactionVeiw = ReplyReactionView()
    
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
    
    private let container: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 3
        return stackView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        self.contentView.addSubview(self.container)
        self.container.addArrangedSubview(self.nicknameContainer)
        self.container.addArrangedSubview(self.titleLable)
        self.container.addArrangedSubview(self.timeLable)
        
        self.nicknameContainer.addArrangedSubview(self.profileImageView)
        self.nicknameContainer.addArrangedSubview(self.nicknameLabel)
        self.nicknameContainer.addArrangedSubview(self.replyReactionVeiw)
        
        NSLayoutConstraint.activate([
            self.container.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8),
            self.container.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 24),
            self.container.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -24),
            self.container.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -6),
            
            self.nicknameContainer.heightAnchor.constraint(equalToConstant: 24),
            self.profileImageView.heightAnchor.constraint(equalToConstant: 24),
            self.profileImageView.widthAnchor.constraint(equalToConstant: 24),
            
        ])
    }
    
    // 스토리보드/XIB에서 이 셀을 인스턴스화할 때 호출 -> 코드로만 작성했기 때문에 구현할 필요X
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//
//  DetailReplyCell.swift
//  enurytime
//
//  Created by 박예린 on 8/11/24.
//

import Foundation
import UIKit

final class DetailReplyCell: UITableViewCell {
    
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
        
        NSLayoutConstraint.activate([
            self.container.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8),
            self.container.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 24),
            self.container.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -24),
            self.container.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -6),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//
//  DetailViewController.swift
//  enurytime
//
//  Created by 박예린 on 8/9/24.
//

import Foundation
import UIKit

final class DetailViewController: UIViewController {
    
    private let tableView = UITableView(frame: .zero, style: .grouped)
    
    private let replytextView = ReplyTextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(self.tableView)
        self.view.addSubview(self.replytextView)
        
        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        self.replytextView.translatesAutoresizingMaskIntoConstraints = false
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(DetailReplyCell.self, forCellReuseIdentifier: "DetailReplyCell")
        self.tableView.register(DetailContentView.self, forHeaderFooterViewReuseIdentifier: "DetailContentView")
        
        NSLayoutConstraint.activate([
            self.tableView.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            self.replytextView.topAnchor.constraint(equalTo: self.tableView.bottomAnchor),
            self.replytextView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 8),
            self.replytextView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -8),
            // 안전 영역: 노치, 상태 바, 툴바 등을 피하고 뷰의 실제 표시 가능한 영역
            self.replytextView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -8),
//            self.replytextView.heightAnchor.constraint(equalToConstant: 44), -> 폰트의 총 길이에 따라 바뀌기 때문에 필요 없어짐.
        ])
        self.tableView.backgroundColor = .white
        self.tableView.separatorStyle = .none
        self.tableView.reloadData()
        self.tableView.layoutIfNeeded()
    }
}

extension DetailViewController: UITableViewDelegate, UITableViewDataSource {
    
    // 테이블 뷰의 섹션에 대한 행의 수를 반환
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    // 각 행에 표시될 셀을 반환
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailReplyCell") as! DetailReplyCell
        return cell
    }
    
    // 헤더푸터뷰 반환
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = tableView.dequeueReusableHeaderFooterView(withIdentifier: "DetailContentView") as! DetailContentView
        return view
    }
}

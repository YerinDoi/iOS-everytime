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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(tableView)
        
        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(DetailReplyCell.self, forCellReuseIdentifier: "DetailReplyCell")
        self.tableView.register(DetailContentView.self, forHeaderFooterViewReuseIdentifier: "DetailContentView")
        
        NSLayoutConstraint.activate([
            self.tableView.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
        ])
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

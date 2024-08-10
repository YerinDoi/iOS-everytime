//
//  MainViewController.swift
//  enurytime
//
//  Created by 박예린 on 8/2/24.
//

import Foundation
import UIKit

final class MainViewController: UITableViewController {
    
    private let texts = [
        """
        윈도우 노트북 쓰는데 갑자기 이상해졌어요
        바탕화면에 있는 거 삭제하면 아이콘은 그대로 남아 있고, 실행하려고 하면 이미 삭제된 파일이라고 떠요
        폴더나 파일 이름을 바꾸려고 하면 그 위치에 없는 파일이라면서 안 돼요
        크롬에서 다운로드한 파일 바탕화면으로 가게 해놨는데 바탕화면에서 안 보여요
        """,
        "오늘 컴구 첫수업 듣고 고민하는 사람 얼마나 있냐",
        "요즘 D.P 이야기 많이하길래 dynamic programming이 대중의 수면위로 올라온줄안 애붕이 있나?",
        """
        윈도우 노트북 쓰는데 갑자기 이상해졌어요
        바탕화면에 있는 거 삭제하면 아이콘은 그대로 남아 있고, 실행하려고 하면 이미 삭제된 파일이라고 떠요
        폴더나 파일 이름을 바꾸려고 하면 그 위치에 없는 파일이라면서 안 돼요
        크롬에서 다운로드한 파일 바탕화면으로 가게 해놨는데 바탕화면에서 안 보여요
        """,
        "오늘 컴구 첫수업 듣고 고민하는 사람 얼마나 있냐",
        "요즘 D.P 이야기 많이하길래 dynamic programming이 대중의 수면위로 올라온줄안 애붕이 있나?",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = ""
        self.navigationItem.titleView = NavigationTitleView()
        self.tableView.separatorStyle = .none
        self.tableView.register(MainCell.self, forCellReuseIdentifier: "MainCell")
        self.tableView.reloadData()
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "more_title"), style: .plain, target: self, action: nil)
    }
     
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            texts.count
        }
    
    // 테이블 뷰의 특정 행에 표시할 셀을 반환하는 메서드
   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       //  dequeueReusableCell 메서드를 호출하여 재사용 가능한 셀을 큐에서 꺼냄
       let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath) as! MainCell
       let text = texts[indexPath.item]
       cell.setupData(data: text)
       return cell
   }
}

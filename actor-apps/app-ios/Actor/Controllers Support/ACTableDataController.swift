//
//  ACTableDataController.swift
//  ActorApp
//
//  Created by Stepan Korshakov on 13.07.15.
//  Copyright (c) 2015 Actor LLC. All rights reserved.
//

import Foundation

class ACTableDataController: AATableViewController {
    
    let isGrouped: Bool
    var tableData: UABaseTableData!
    
    init(isGrouped: Bool) {
        self.isGrouped = isGrouped
        super.init(style: isGrouped ? UITableViewStyle.Grouped : UITableViewStyle.Plain)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = MainAppTheme.list.bgColor
        
        tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        tableView.backgroundColor = MainAppTheme.list.backyardColor
        tableView.tableFooterView = UIView()
        
        tableData = isGrouped ? UAGrouppedTableData(tableView: tableView) : UATableData(tableView: tableView)
        tableDidLoad()
    }
    
    func tableDidLoad() {
        
    }
}
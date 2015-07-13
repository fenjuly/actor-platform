//
//  InterestsController.swift
//  ActorApp
//
//  Created by Stepan Korshakov on 13.07.15.
//  Copyright (c) 2015 Actor LLC. All rights reserved.
//

import Foundation

class InterestsController: ACTableDataController {
    
    private let CellIdentifier = "CellIdentifier"
    var interests: [APInterest] = []
    
    init() {
        super.init(isGrouped: false)
        
        navigationItem.title = "Pick Your Interests"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.Done, target: self, action: "done")
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func tableDidLoad() {
        tableView.alpha = 0
        tableData.registerClass(CommonCell.self, forCellReuseIdentifier: CellIdentifier)
        tableData.addSection()
            .addCustomCells(44, countClosure: { () -> Int in
                return self.interests.count
            }) { (tableView, index, indexPath) -> UITableViewCell in
                var cell: CommonCell = tableView.dequeueReusableCellWithIdentifier(self.CellIdentifier, forIndexPath: indexPath) as! CommonCell
                
                return cell
            }
        
        // Getting screen size
        var size = UIScreen.mainScreen().bounds.size
        var width = UIScreen.mainScreen().scale * size.width
        var height = UIScreen.mainScreen().scale * size.height

        execute(MSG.executeExternalCommand(APRequestInitLlectro(int: jint(width), withInt: jint(height))), successBlock: { (val) -> Void in
            self.execute(MSG.executeExternalCommand(APRequestGetAvailableInterests()), successBlock: { (val) -> Void in
                    var response = val as! APResponseGetAvailableInterests
                    var rootInterests = response.getRootInterests()
                    self.interests = []
                    for i in 0..<rootInterests.size() {
                        var item = rootInterests.getWithInt(i) as! APInterest
                        self.interests.append(item)
                    }
                    self.tableView.reloadData()
                    self.tableView.showView()
                }, failureBlock: { (val) -> Void in
                    self.dismissController()
                })
        }) { (val) -> Void in
            self.dismissController()
        }
    }
    
    func dismissController() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
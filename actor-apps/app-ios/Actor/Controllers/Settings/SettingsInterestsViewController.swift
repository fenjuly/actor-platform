//
//  InterestsController.swift
//  ActorApp
//
//  Created by Stepan Korshakov on 13.07.15.
//  Copyright (c) 2015 Actor LLC. All rights reserved.
//

import Foundation

class SettingsInterestsViewController: ACTableDataController {
    
    private let CellIdentifier = "CellIdentifier"
    var interests: [APInterest] = []
    var enabled: [Bool] = []
    
    init() {
        super.init(isGrouped: false)
        navigationItem.title = NSLocalizedString("InterestsTitle", comment: "Title")
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if self.presentingViewController != nil {
            navigationItem.rightBarButtonItem = UIBarButtonItem(title: NSLocalizedString("NavigationDone", comment: "Notification Done"), style: UIBarButtonItemStyle.Done, target: self, action: "dismissController")
        }
    }
    
    override func tableDidLoad() {
        tableView.alpha = 0
        tableData.registerClass(CommonCell.self, forCellReuseIdentifier: CellIdentifier)
        tableData.addSection()
            .addCustomCells(44, countClosure: { () -> Int in
                return self.interests.count
            }) { (tableView, index, indexPath) -> UITableViewCell in
                var cell: CommonCell = tableView.dequeueReusableCellWithIdentifier(self.CellIdentifier, forIndexPath: indexPath) as! CommonCell
                var interest = self.interests[index]
                cell.style = CommonCellStyle.Switch
                cell.setContent(interest.getTitle())
                cell.setSwitcherOn(self.enabled[index])
                cell.switchBlock = { (val) -> () in
                    var list = JavaUtilArrayList()
                    list.addWithId(JavaLangInteger(int: interest.getId()))
                    self.enabled[index] = val
                    if val {
                        self.execute(MSG.executeExternalCommand(APRequestEnableInterests(javaUtilList: list)), successBlock: { (val) -> Void in
                            
                        }, failureBlock: { (val) -> Void in
                            self.enabled[index] = false
                            cell.setSwitcherOn(false, animated: true)
                        })
                    } else {
                        self.execute(MSG.executeExternalCommand(APRequestDisableInterests(javaUtilList: list)), successBlock: { (val) -> Void in
                            
                            }, failureBlock: { (val) -> Void in
                                self.enabled[index] = true
                                cell.setSwitcherOn(true, animated: true)
                        })
                    }
                }
                if index == 0 {
                    cell.showTopSeparator()
                } else {
                    cell.hideTopSeparator()
                }
                cell.showBottomSeparator()
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
                    self.enabled = []
                    for i in 0..<rootInterests.size() {
                        var item = rootInterests.getWithInt(i) as! APInterest
                        self.interests.append(item)
                        self.enabled.append(item.isSelected().boolValue)
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
        if self.presentingViewController != nil {
            self.dismissViewControllerAnimated(true, completion: nil)
        } else {
            self.navigateBack()
        }
    }
}
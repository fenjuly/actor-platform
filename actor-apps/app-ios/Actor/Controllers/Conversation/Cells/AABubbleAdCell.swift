//
//  AAAdCell.swift
//  ActorApp
//
//  Created by Stepan Korshakov on 25.05.15.
//  Copyright (c) 2015 Actor LLC. All rights reserved.
//

import Foundation

class AABubbleAdCell: AABubbleCell {
    
    static var heights:[jlong: CGFloat] = [:]
    
    let bgView = UIImageView()
    
    var bindedHeight: CGFloat?
    var bindedFileId: Int64?
    var bindedUrl: String?
    var bindedBannerId: Int32?
    var downloadCallback: CocoaDownloadCallback?
    
    init(frame: CGRect) {
        super.init(frame: frame, isFullSize: true)
        
        bgView.backgroundColor = UIColor.clearColor()
        
        mainView.addSubview(bgView)
        mainView.backgroundColor = UIColor.clearColor()
        bgView.userInteractionEnabled = true
        bgView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "didTap"))
        
        contentInsets = UIEdgeInsets(top: 3, left: 0, bottom: 3, right: 0)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func bind(message: AMMessage, reuse: Bool, cellLayout: CellLayout, setting: CellSetting) {
        
        var content = BannerContent.fromJson(message.getContent() as! AMJsonContent)!
        bindedUrl = content.adUrl
        bindedBannerId = content.bannerId
        
        if (bindedFileId != nil && content.fileId != bindedFileId) {
            MSG.unbindRawFileWithFileId(content.fileId, autoCancel: true, withCallback: downloadCallback!)
            downloadCallback = nil
            bindedFileId = nil
            bindedHeight = nil
            bgView.image = nil
        }
        
        if bindedFileId == nil {
            bindedFileId = content.fileId
            let currentFileId = bindedFileId
            bindedHeight = AABubbleAdCell.heights[content.fileId]
        
            downloadCallback = CocoaDownloadCallback(notDownloaded: nil, onDownloading: nil,
                onDownloaded: { (reference: String) -> () in
                    if (self.bindedFileId != currentFileId) {
                        return
                    }
                    var path = CocoaFiles.pathFromDescriptor(reference)
                    var img = UIImage(contentsOfFile: path)
                    if (img == nil) {
                        return
                    }
                    var scale =  UIScreen.mainScreen().bounds.width / img!.size.width;
                    var height = img!.size.height * scale

                    dispatch_async(dispatch_get_main_queue(), { () -> Void in
                        if (self.bindedFileId != currentFileId) {
                            return
                        }
                        self.bgView.image = img
                    
                        if self.bindedHeight == nil {
                            AABubbleAdCell.heights.updateValue(height, forKey: content.fileId)
                            self.notifyContentChanged()
                        }
                    })
            })
        
            var fileReference = AMFileReference(APFileLocation: APFileLocation(long: content.fileId, withLong: content.fileAccesHash), withNSString: "banner.jpg", withInt: content.fileSize)
            MSG.bindRawFileWithReference(fileReference, autoStart: true, withCallback: downloadCallback)
        }
    }
    
    func didTap() {
        if bindedUrl != nil {
            
            var app = UIApplication.sharedApplication()
            var delegate = app.delegate as! AppDelegate
            
            delegate.executeHidden(MSG.executeExternalCommand(APRequestNotifyBannerClick(int: jint(bindedBannerId!))), successBlock: nil, failureBlock: nil)
            
            app.openURL(NSURL(string: bindedUrl!)!)
        }
    }
    
    func needResize(message: AMMessage) -> Bool {
        var content = BannerContent.fromJson(message.getContent() as! AMJsonContent)!
        if bindedFileId == content.fileId {
            if AABubbleAdCell.heights[content.fileId] != bindedHeight {
                return true
            } else {
                return false
            }
        } else {
            return true
        }
    }
    
    override func layoutContent(maxWidth: CGFloat, offsetX: CGFloat) {
        var w = contentView.bounds.width
        var h = contentView.bounds.height - 6
        bgView.frame = CGRectMake(0, 3, w, h)
        layoutBubble(w, contentHeight: h)
    }
    
    class func measureHeight(message: AMMessage) -> CGFloat {
        
        var content = BannerContent.fromJson(message.getContent() as! AMJsonContent)!
        var height = AABubbleAdCell.heights[content.fileId]
        if (height != nil) {
            return CGFloat(height!) + 3 + 3
        }
        return 0
    }
}
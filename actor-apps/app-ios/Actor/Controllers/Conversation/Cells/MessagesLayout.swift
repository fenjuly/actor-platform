//
//  MessagesViewCollection.swift
//  ActorApp
//
//  Created by Stepan Korshakov on 27.06.15.
//  Copyright (c) 2015 Actor LLC. All rights reserved.
//

import Foundation

class MessagesLayout : UICollectionViewLayout {
    
    var deletedIndexPaths = [NSIndexPath]()
    var insertedIndexPaths = [NSIndexPath]()
    var items = [LayoutItem]()
    var disableAutoScroll: Bool = false
    
    var contentHeight: CGFloat = 0.0
    var currentItems = [CachedLayout]()
    var isScrolledToEnd: Bool = false
    
    weak var delegate : MessagesLayoutDelegate? {
        get{
            return self.collectionView!.delegate as? MessagesLayoutDelegate
        }
    }
    
    override init() {
        super.init()
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func beginUpdates(disableAutoScroll: Bool) {
        self.disableAutoScroll = disableAutoScroll
        
        // Saving current visible cells
        currentItems.removeAll(keepCapacity: true)
        var visibleItems = self.collectionView!.indexPathsForVisibleItems()
        var currentOffset = self.collectionView!.contentOffset.y
        for indexPath in visibleItems {
            var index = (indexPath as! NSIndexPath).item
            var topOffset = items[index].attrs.frame.origin.y - currentOffset
            var id = items[index].id
            currentItems.append(CachedLayout(id: id, offset: topOffset))
        }
        
        isScrolledToEnd = self.collectionView!.contentOffset.y < 8
    }
    
    override func prepareLayout() {
        super.prepareLayout()
        
        var del = self.collectionView!.delegate as! MessagesLayoutDelegate
        
        // Validate sections
        var sectionsCount = self.collectionView!.numberOfSections()
        if sectionsCount == 0 {
            items.removeAll(keepCapacity: true)
            contentHeight = 0.0
            return
        }
        if sectionsCount != 1 {
            fatalError("Unsupported more than 1 section")
        }
        
        items.removeAll(keepCapacity: true)
            
        var itemsCount = self.collectionView!.numberOfItemsInSection(0)
        var offset: CGFloat = 0
        contentHeight = 0.0
        for i in 0..<itemsCount {
            var indexPath = NSIndexPath(forRow: i, inSection: 0)
            var itemId = del.collectionView(self.collectionView!, layout: self, idForItemAtIndexPath: indexPath)
            var itemSize = del.collectionView(self.collectionView!, layout: self, sizeForItemAtIndexPath: indexPath)
            
            var item = LayoutItem(id: itemId)
            
            item.size = itemSize
            
            var attrs = UICollectionViewLayoutAttributes(forCellWithIndexPath: indexPath)
            attrs.size = item.size
            attrs.center = CGPointMake(0, offset + item.size.height / 2.0)
            attrs.frame = CGRect(origin: CGPointMake(0, offset), size: attrs.size)
            attrs.bounds = CGRect(origin: CGPointZero, size: attrs.size)
                // attrs.alpha = 0
            
            offset += item.size.height
            item.attrs = attrs
            
            items.append(item)
            
            contentHeight += item.size.height
        }
    }
    
    override func collectionViewContentSize() -> CGSize {
        return CGSize(width: self.collectionView!.bounds.width, height: contentHeight)
    }
    
    override func layoutAttributesForElementsInRect(rect: CGRect) -> [AnyObject]? {
        var res = [AnyObject]()
        for itm in items {
            if CGRectIntersectsRect(rect, itm.attrs.frame) {
                res.append(itm.attrs)
            }
        }
        
        return res
    }
    
    override func prepareForCollectionViewUpdates(updateItems: [AnyObject]!) {
        super.prepareForCollectionViewUpdates(updateItems)
        
        insertedIndexPaths.removeAll(keepCapacity: true)
        deletedIndexPaths.removeAll(keepCapacity: true)
        for update in updateItems {
            if let upd = update as? UICollectionViewUpdateItem {
                if upd.updateAction == .Insert {
                    insertedIndexPaths.append(upd.indexPathAfterUpdate!)
                } else if upd.updateAction == .Delete {
                    deletedIndexPaths.append(upd.indexPathBeforeUpdate!)
                }
            }
        }
    }
    
    override func layoutAttributesForItemAtIndexPath(indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes! {
        return items[indexPath.item].attrs
    }    
    
    override func initialLayoutAttributesForAppearingItemAtIndexPath(itemIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes? {
        var res = super.initialLayoutAttributesForAppearingItemAtIndexPath(itemIndexPath)
        if insertedIndexPaths.contains(itemIndexPath) {
            res?.alpha = 0
            res?.transform = CGAffineTransformTranslate(CGAffineTransformIdentity, 0, -44)
        } else {
            res?.alpha = 1
        }
        return res
    }
    
    override func finalizeCollectionViewUpdates() {
        super.finalizeCollectionViewUpdates()
        
        if disableAutoScroll {
            var size = collectionViewContentSize()
            var delta: CGFloat! = nil
            for item in items {
                for current in currentItems {
                    if current.id == item.id {
                        var oldOffset = current.offset
                        var newOffset = item.attrs!.frame.origin.y - self.collectionView!.contentOffset.y
                        delta = oldOffset - newOffset
                    }
                }
            }
            
            if delta != nil {
                self.collectionView!.contentOffset = CGPointMake(0, self.collectionView!.contentOffset.y - delta)
            }
        }
    }
}

class LayoutItem {
    
    var id: Int64
    var invalidated: Bool = true
    var size: CGSize!
    var attrs: UICollectionViewLayoutAttributes!
    
    init(id: Int64) {
        self.id = id
    }
}

class CachedLayout {
    var id: Int64
    var offset: CGFloat
    
    init(id: Int64, offset: CGFloat) {
        self.id = id
        self.offset = offset
    }
}

@objc protocol MessagesLayoutDelegate: UICollectionViewDelegate, UIScrollViewDelegate, NSObjectProtocol {
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, idForItemAtIndexPath indexPath: NSIndexPath) -> Int64
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize

    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, gravityForItemAtIndexPath indexPath: NSIndexPath) -> MessageGravity
}

@objc enum MessageGravity: Int {
    case Left
    case Right
    case Center
}

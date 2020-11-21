//
//  MergeTree.swift
//  Leetcode
//
//  Created by DPP on 2020/11/21.
//

/*
 617. 合并二叉树
 给定两个二叉树，想象当你将它们中的一个覆盖到另一个上时，两个二叉树的一些节点便会重叠。
 你需要将他们合并为一个新的二叉树。合并的规则是如果两个节点重叠，那么将他们的值相加作为节点合并后的新值，否则不为 NULL 的节点将直接作为新二叉树的节点。

 示例 1:
 输入:
     Tree 1                     Tree 2
           1                         2
          / \                       / \
         3   2                     1   3
        /                           \   \
       5                             4   7
 输出:
 合并后的树:
          3
         / \
        4   5
       / \   \
      5   4   7
 */

import Foundation

fileprivate class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

fileprivate class MergeTree {
    func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
        if t1 == nil {
            return t2
        }
        
        if t2 == nil {
            return t1
        }
        
        let newTree = TreeNode(t1!.val + t2!.val)
        newTree.left = mergeTrees(t1?.left, t2?.left)
        newTree.right = mergeTrees(t1?.right, t2?.right)
        
        return newTree
    }
}

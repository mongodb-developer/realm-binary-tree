//
//  BinaryTree.swift
//  
//
//  Created by Diego Freniche Brito on 16/6/21.
//

import Foundation


/// A Binary Tree has a Root node and at most two children (can be `nil`)
public protocol BinaryTree: TreeTraversable {
    
    /// Root node of this tree. A Root node tree has no parent
    var root: BinaryTree? {get set}
    
    /// Left child of this Subtree
    var leftChild: BinaryTree? {get set}
    
    /// Right child of this Subtree
    var rightChild: BinaryTree? {get set}

    /// Both children
    var children: (left: BinaryTree?, right: BinaryTree?) {get}
    
    /// Every node/subtree has a parent except the root node
    var parent: BinaryTree? { get set }
    
    /// A Node is a Leaf of the tree when has no children
    /// - Returns: true if the node has no children
    func isLeaf() -> Bool
    
    /// A Node is a Parent if has at least one child
    /// - Returns: true if at least one child is present
    func isParent() -> Bool
    
    /// A Node is empty if has no data in it
    /// - Returns: true if empty
    func isEmpty() -> Bool
    
    /// Checks if a Node/Subtree has a parent Node
    /// - Returns: true if has a ``parent``
    func hasParent() -> Bool
    
    /// Data stored in this node
    var data: String? {get set}
}

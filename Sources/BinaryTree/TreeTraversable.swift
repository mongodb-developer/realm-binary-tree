//
//  File.swift
//  
//
//  Created by Diego Freniche Brito on 16/6/21.
//

import Foundation

public protocol TreeTraversable {
    
    typealias T = String

    /**
     Algorithm Inorder(tree)
        1. Traverse the left subtree, i.e., call Inorder(left-subtree)
        2. Visit the root.
        3. Traverse the right subtree, i.e., call Inorder(right-subtree)
            
        For this tree:
        ```
                        1
                |-------|-------|
                2               3
            |-------|
            4       5
        ```
        will print `4 2 5 1 3`
     */
    func mapInOrder(tree: BinaryTree, closure: (T?) -> Void)
    
    
    /**
     Algorithm Preorder(tree)
        1. Visit the root.
        2. Traverse the left subtree, i.e., call Preorder(left-subtree)
        3. Traverse the right subtree, i.e., call Preorder(right-subtree)
    
     For this tree:
     ```
                     1
             |-------|-------|
             2               3
         |-------|
         4       5
     ```
     will print `1 2 4 5 3`
     */
    func mapPreOrder(tree: BinaryTree, closure: (T?) -> Void)
    
    /**
     Algorithm Postorder(tree)
        1. Traverse the left subtree, i.e., call Postorder(left-subtree)
        2. Traverse the right subtree, i.e., call Postorder(right-subtree)
        3. Visit the root.
    
     For this tree:
     ```
                     1
             |-------|-------|
             2               3
         |-------|
         4       5
     ```
     will print `4 5 2 3 1`
     */
    func mapPostOrder(tree: BinaryTree, closure: (T?) -> Void)
}


public extension TreeTraversable {
    
    func mapInOrder(tree: BinaryTree, closure: (T?) -> Void) {
        if let leftChild = tree.leftChild {
            mapInOrder(tree: leftChild, closure: closure)
        }
        
        closure(tree.data)
        
        if let rightChild = tree.rightChild {
            mapInOrder(tree: rightChild, closure: closure)
        }
    }
    
    func mapPreOrder(tree: BinaryTree, closure: (T?) -> Void) {
        closure(tree.data)

        if let leftChild = tree.leftChild {
            mapPreOrder(tree: leftChild, closure: closure)
        }
                
        if let rightChild = tree.rightChild {
            mapPreOrder(tree: rightChild, closure: closure)
        }
    }
    
    func mapPostOrder(tree: BinaryTree, closure: (T?) -> Void) {
        if let leftChild = tree.leftChild {
            mapPostOrder(tree: leftChild, closure: closure)
        }
                
        if let rightChild = tree.rightChild {
            mapPostOrder(tree: rightChild, closure: closure)
        }
        
        closure(tree.data)
    }
}

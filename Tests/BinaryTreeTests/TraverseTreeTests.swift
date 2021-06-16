//
//  TraverseTreeTests.swift
//  
//
//  Created by Diego Freniche Brito on 16/6/21.
//

import XCTest
@testable import BinaryTree

class TraverseTreeTests: XCTestCase {
    
    func testInOrder() {
        let tree = createTestTree()
        
        var result: [String] = []
        tree.mapInOrder(tree: tree.root!) { (nodeData: String?) in
            print("Visiting node: \(String(describing: nodeData))")
            result.append(nodeData ?? "-")
        }
        
        XCTAssertEqual(result, ["4","2","5","1","3"])
    }
    
    func testPreOrder() {
        let tree = createTestTree()
        
        var result: [String] = []
        tree.mapPreOrder(tree: tree.root!) { (nodeData: String?) in
            print("Visiting node: \(String(describing: nodeData))")
            result.append(nodeData ?? "-")
        }
        
        XCTAssertEqual(result, ["1","2","4","5","3"])
    }
    
    func testPostOrder() {
        let tree = createTestTree()
        
        var result: [String] = []
        tree.mapPostOrder(tree: tree.root!) { (nodeData: String?) in
            print("Visiting node: \(String(describing: nodeData))")
            result.append(nodeData ?? "-")
        }
        
        XCTAssertEqual(result, ["4","5","2","3","1"])
    }
    
    private func createTestTree() -> BinaryTree {
        let tree = RealmBinaryTree(data: "1")
        let leftNode = RealmBinaryTree(data: "2")
        leftNode.leftChild = RealmBinaryTree(data: "4")
        leftNode.rightChild = RealmBinaryTree(data: "5")
        tree.root?.leftChild = leftNode
        tree.root?.rightChild = RealmBinaryTree(data: "3")

        return tree
    }
}

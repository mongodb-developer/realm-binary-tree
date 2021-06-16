import XCTest
@testable import BinaryTree

final class BinaryTreeTests: XCTestCase {

    func testCanCreateAnEmptyTree() throws {
        // Given empty String Node
        let node = RealmBinaryTree()
        
        // Then
        XCTAssertNotNil(node)
    }
    
    func testInitialStateOfAnEmptyTree() {
        // Given an empty Tree
        let node = RealmBinaryTree()
        
        // When initialized
        
        // Then
        XCTAssertNil(node.root)
        XCTAssertNil(node.data)
        XCTAssertNil(node.leftChild)
        XCTAssertNil(node.rightChild)
        XCTAssertTrue(node.isLeaf())
        XCTAssertTrue(node.isEmpty())
    }
    
    func testInitialStateOfANodeWithLeftRightChildrenAndData() {
        // Given a String Node with left and right children
        let tree = RealmBinaryTree()
        tree.leftChild = RealmBinaryTree(data: "left")
        tree.rightChild = RealmBinaryTree(data: "right")
        
        // When initialized
        
        // Then
        XCTAssertNil(tree.data)
        XCTAssertNotNil(tree.leftChild)
        XCTAssertEqual(tree.leftChild?.data, "left")

        XCTAssertNotNil(tree.rightChild)
        XCTAssertEqual(tree.leftChild?.data, "left")

        XCTAssertFalse(tree.isLeaf())
        XCTAssertTrue(tree.isParent())
        XCTAssertTrue(tree.isEmpty())
    }
    
    func testInitialStateOfANodeInitWithLeftRightChildrenAndData() {
        // Given a String Node with left and right children, and data
        let node = RealmBinaryTree(left: RealmBinaryTree(data: "left"), right: RealmBinaryTree(data: "right"), data: "data")
        
        // When initialized
        
        // Then
        XCTAssertNotNil(node.data)
        XCTAssertEqual(node.data, "data")

        XCTAssertNotNil(node.leftChild)
        XCTAssertEqual(node.leftChild?.data, "left")

        XCTAssertNotNil(node.rightChild)
        XCTAssertEqual(node.leftChild?.data, "left")

        XCTAssertFalse(node.isLeaf())
        XCTAssertTrue(node.isParent())
        XCTAssertFalse(node.isEmpty())
    }
    
    func testInsertNodeFromLeftChild() {
        // Given a String Node with left and right children
        let node = RealmBinaryTree()
        node.leftChild = RealmBinaryTree(data: "left")
        node.rightChild = RealmBinaryTree(data: "right")
        
        // When we insert a node from that left child
        node.leftChild = node.nodeFromLeftChild()
        
        // Then
        XCTAssertNotNil(node.leftChild)
        XCTAssertNotNil(node.rightChild)
        
        // now the left node is Empty
        XCTAssertNil(node.leftChild?.data)
        XCTAssertTrue(node.leftChild!.isEmpty())
        
        XCTAssertEqual(node.leftChild!.leftChild?.data, "left")
        XCTAssertNil(node.leftChild!.rightChild)
    }
}

import Foundation
import Realm

/// A Binary Tree has a Root node and at most two children (they can be `nil`)
/// to get both children nodes access ``children``
public class RealmBinaryTree: RLMObject, TreeTraversable {
    
    /// Data stored in this node
    @objc public dynamic var data: String?

    /// Root node of this tree. A Root node tree has no parent
    @objc public dynamic var root: RealmBinaryTree? = nil
    
    /// Left child of this Subtree
    @objc public dynamic var leftChild: RealmBinaryTree? = nil
    
    /// Right child of this Subtree
    @objc public dynamic var rightChild: RealmBinaryTree? = nil
    
    /// Both children
    public var children: (left: RealmBinaryTree?, right: RealmBinaryTree?) {
        (leftChild, rightChild)
    }
    
    /// Every node/subtree has a parent except the root node
    public var parent: RealmBinaryTree? = nil
    
    public convenience init(data: String?) {
        self.init()
        
        self.root = self

        self.data = data
    }
    
    public convenience init(left: RealmBinaryTree?, right: RealmBinaryTree?, data: String?) {
        self.init()
        
        self.data = data
        self.leftChild = left
        self.rightChild = right
    }
    
    /// A Node is a Leaf of the tree when has no children
    /// - Returns: true if the node has no children
    public func isLeaf() -> Bool {
        leftChild == nil && rightChild == nil
    }
    
    /// A Node is a Parent if has at least one child
    /// - Returns: true if at least one child is present
    public func isParent() -> Bool {
        !isLeaf()
    }
    
    /// A Node is empty if has no data in it
    /// - Returns: true if empty
    public func isEmpty() -> Bool {
        data == nil
    }
    
    /// Checks if a Node/Subtree has a parent Node
    /// - Returns: true if has a ``parent``
    public func hasParent() -> Bool {
        parent != nil
    }
    
    /// Creates a new Node, with left child being current left child of this node
    /// ```
    /// Before: Node N with Left Child (LC) and Right Child (RC)
    ///      N
    ///    LC RC
    ///
    ///  After (NN == New Node)
    ///      N
    ///    NN RC
    ///  LC -
    /// ```
    /// - Returns: a new Node, that will contain what's currently in this node's left child
    func nodeFromLeftChild() -> RealmBinaryTree {
        RealmBinaryTree(left: leftChild, right: nil, data: nil)
    }
}

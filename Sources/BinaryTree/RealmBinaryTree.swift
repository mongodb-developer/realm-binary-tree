import Foundation

/// A node of a tree. Can be a Leaf (without children) or an inner Node
/// to get both children nodes access ``children``
/// Nodes contain a piece of data (of type `T`)
public class RealmBinaryTree: BinaryTree {
    
    public var data: String?
    
    public var root: BinaryTree? = nil
    
    public var leftChild: BinaryTree? = nil
    
    public var rightChild: BinaryTree? = nil
    
    public var children: (left: BinaryTree?, right: BinaryTree?) {
        (leftChild, rightChild)
    }
    
    public var parent: BinaryTree? = nil

    public init() {
    }
    
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
        RealmBinaryTree(left: leftChild as? RealmBinaryTree, right: nil, data: nil)
    }
}

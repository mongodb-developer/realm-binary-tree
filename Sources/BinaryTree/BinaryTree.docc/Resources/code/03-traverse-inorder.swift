
/**
 Creates this tree:
 ```
                 1
         |-------|-------|
         2               3
     |-------|
     4       5
 ```
 */
private func createTestTree() -> RealmBinaryTree {
    let tree = RealmBinaryTree(data: "1")
    let leftNode = RealmBinaryTree(data: "2")
    leftNode.leftChild = RealmBinaryTree(data: "4")
    leftNode.rightChild = RealmBinaryTree(data: "5")
    tree.root?.leftChild = leftNode
    tree.root?.rightChild = RealmBinaryTree(data: "3")

    return tree
}

let tree = createTestTree()

var result: [String] = []

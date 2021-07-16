# Traversing a Tree

Here you'll find the different options for traversing a tree

## How to traverse a BinaryTree

- create a Tree
- add some nodes
-  call `tree.mapInOrder(tree:)` or any other implementation

You can pass in a closure, so while traversing the tree that closure gets fired on each node.

```swift
if let rootNode = tree.root {
    tree.mapInOrder(tree: rootNode) { (nodeData: String?) in
        print("Visiting node: \(String(describing: nodeData))")
    }
}
```

## mapInOrder

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

## mapPreOrder

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

## mapPostOrder

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

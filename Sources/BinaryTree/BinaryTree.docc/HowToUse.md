# How to use

How to install and create BinaryTrees in your own code

## Installation

To use this library, add it to your `Package.swift` as a dependency. You need to add 

```
https://github.com/mongodb-developer/realm-binary-tree
```

You can follow Apple's documentation [Adding Package Dependencies to Your App](https://developer.apple.com/documentation/swift_packages/adding_package_dependencies_to_your_app)

## Using it

Once added to your project, you need to import the `BinaryTree` package

```swift
import BinaryTree
```

Then, you can start with an __empty Tree__ and add nodes later to it

```swift
let tree = RealmBinaryTree()
tree.leftChild = RealmBinaryTree(data: "left")
tree.rightChild = RealmBinaryTree(data: "right")
```

That code will create this tree:

```
          (empty root)
        |-------|-------|
        |       |       |
     "left"           "right"
    
```

### Creating a Tree with left and right children

```swift
let node = RealmBinaryTree(left: RealmBinaryTree(data: "left"), right: RealmBinaryTree(data: "right"), data: "data")
```

That code will create this tree:

```
              "data"
        |-------|-------|
        |       |       |
     "left"           "right"
    
```

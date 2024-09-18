# Notice: Repository Deprecation
This repository is deprecated and no longer actively maintained. It contains outdated code examples or practices that do not align with current MongoDB best practices. While the repository remains accessible for reference purposes, we strongly discourage its use in production environments.
Users should be aware that this repository will not receive any further updates, bug fixes, or security patches. This code may expose you to security vulnerabilities, compatibility issues with current MongoDB versions, and potential performance problems. Any implementation based on this repository is at the user's own risk.
For up-to-date resources, please refer to the [MongoDB Developer Center](https://mongodb.com/developer).


# BinaryTree

A simple implementation of a Realm-backed [Binary Tree](https://en.wikipedia.org/wiki/Binary_tree).

This library __is a demo on how to use DocC__. See beelow how your new docs will look! 👇

| |  |
| --- | --- | 
|![](img/main-page.png) | ![](img/tree-traversable.png) |


You can read a series of posts about how to create a small guessing game in the Realm/MongoDB blog, starting with [Creating a framework that uses Realm as a 3rd party dependency](https://www.mongodb.com/developer/how-to/adding-realm-as-dependency-ios-framework/)

## Realm + Swift Packages

Also it shows how to integrate and use Realm in your Swift Packages. For details, have a look at [Package.swift](./Package.swift)

## Generating DocC using Github Actions

This repo also has a Github Action to automatically generate the DocC docs on each push. You can read about this in the [MongoDB Developer Center](https://www.mongodb.com/developer) article [Continuously Building and Hosting our Swift DocC Documentation using Github Actions and Netlify](https://www.mongodb.com/developer/languages/swift/build-host-docc-documentation-using-github-actions-netlify/)

For the impatient, check the [`main.yml` file](./.github/workflows/main.yml)

Generated DocC files can be found [in this repo](https://github.com/mongodb-developer/realm-binary-tree-docc)

## Local testing

Every time you build the documentation from Xcode the documentation browser will allow you to check how your docs look. [You can export the docs as a Documentation Archive](https://developer.apple.com/documentation/Xcode/distributing-documentation-to-external-developers).

But this docs are a web site that we can serve locally. Let's see how to do it using Docker

To host your generated docs in a local web server, if you have Docker installed you can create your own image or mount the generated doc folder

### Creating an Image

Create an image based on this Docker file: it'll have an Apache httpd server and the doccarchive files

```bash
docker build -t docs .
```

then run the image in a container

```bash
docker run -dit --name my-running-app -p 8080:80 docs
```

### Mounting the generated doc folder

```bash
docker run -dit -v /Users/dfreniche/Code/DocC/BinaryTree/docs/BinaryTree.doccarchive:/usr/local/apache2/htdocs/  -p 8080:80 httpd:2.4
```

Change the path to where you exported the doccarchive

- To access the documentation, navigate to: http://localhost:8080/documentation/binarytree/
- To access the tutorials: http://localhost:8080/tutorials/binarytree/


## Resources
To learn more about Realm/MongoDB you have all these fantastic resources:

- [💻 MongoDB DeveloperHub, central point for everything MongoDB/Realm related](https://www.mongodb.com/developer)
- [💬 The MongoDB Forums](https://www.mongodb.com/community/forums/)
- [👩‍💻 Developer Blog](https://developer.mongodb.com/learn/?content=Articles#main)
- [🎓 MongoDB University](https://university.mongodb.com/)
- [📺 Youtube Channel](https://www.youtube.com/c/MongoDBofficial)
- [🎧 The MongoDB Podcast](https://developer.mongodb.com/learn/?content=Podcasts#main)

# To host your generated docs in a local web server, if you have Docker installed you can create your own image or mount the generated doc folder

# Creating an Image

# create an image based on this Docker file: it'll have an Apache httpd server and the doccarchive files
# docker build -t docs .
# then run the image in a container
# docker run -dit --name my-running-app -p 8080:80 docs


# Mounting the generated doc folder

# docker run -dit -v /Users/dfreniche/Code/DocC/BinaryTree/docs/BinaryTree.doccarchive:/usr/local/apache2/htdocs/  -p 8080:80 httpd:2.4
# change the path to where you exported the doccarchive


# to access the documentation, navigate to: http://localhost:8080/documentation/binarytree/
# to access the tutorials: http://localhost:8080/tutorials/binarytree/

FROM httpd:2.4

COPY ./docs/BinaryTree.doccarchive/ /usr/local/apache2/htdocs/

# Learnings:
* Docker terminilogies - Docker images, containers, layers. Images are executable copy of linux - however they cannot run on their own. They need a container (namespace or disk space) to run. So containers are running instance of docker images. These containers are non-persistent. Meaning any changes (install/remove packages, edit files etc) are all lost when the container is removed. Btw, installing a package on top of container is an antipattern. If you want certains packages then make it as part of the image(dockerfile) and rebuilt it.

* Building docker file.

* First command that you run in docker has a pid = 1. The container exits when process pid=1 stops. This is what is passed in the command line argument or as CMD in dockerfile.

* Using docker-compose (fig is old name, now acquired by docker inc). It lets you spin up multiple docker instances automatically. Its written in yaml format (docker-compose.yml). Idea of docker swarm and clusters. 

* Attaching volumes to docker instances to persist data. Host based volumes (acccessible by the host os), docker volumes.

* You could also run gui application inside containers. If you want to interact with ui apps from host then you need to enable [ssh with X11 forwarding](http://en.tldp.org/HOWTO/XDMCP-HOWTO/ssh.html).

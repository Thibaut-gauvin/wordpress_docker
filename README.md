# GET STARTED WITH DOCKER :

More Infos :

[Docker Documentation](https://docs.docker.com/)

**-----------------------------------------------------**

## Prerequisites

Install [Docker](https://www.docker.com/) on your system.

- [Install instructions](https://docs.docker.com/installation/mac/) for Mac OS X
- [Install instructions](https://docs.docker.com/installation/ubuntulinux/) for Ubuntu
- [Install instructions](https://docs.docker.com/engine/installation/windows/) for Windows (prefer "Docker For Windows" than deprecated "Docker Toolbox")

Note that using "Docker Toolbox" on Windows OS can occur unexpected issues ... 

Install [Docker Compose](http://docs.docker.com/compose/) on your system.

- [Install instructions](https://docs.docker.com/installation/) for all supported systems

Check that you can use docker commands without sudo !
- To run docker command without sudo on LINUX host, you need to add your user (who has root privileges) to docker group & restart your sessions.
      
        $ sudo usermod -aG docker <user_name>

**-----------------------------------------------------**

## Installation:

A Makefile is used to provide some useful shortcuts for manipulating docker & docker-compose commands

- **1- Copying compose file :**   

  First, you need to create a copy of `.env.example` and call it `.env`
  
        # Assume you are in project root, on Unix system
        $ cp .env.example .env
        
  This files contains sensible data that not be committed on GIT, you can modify it to you own needs !
  
  Example: you can change Nginx listen port on your machine to avoid collision with other local apps

- **2- Make the :coffee: :**

    Run following command :
    
        $ make start
        
	This command will create & build Docker images, also start & configures required Containers.
	A lot of stuff is downloaded from Internet, so it can take a lot of time, depending on your Internet speed. 
        
- **3- Your done !**

    You can now access to following services on your host machine :

    - **[WordPress](http://localhost)**
    - **[PhpMyAdmin](http://localhost:8080)**

    PS: if you have changed your port on .env files you need to adapt url!

- **4- Check running container & listening port :**
    
        $ make list

**When you reboot your computer :**
    
Just simply run following command to start your Containers (docker Images already created) :    
    
    $ make start

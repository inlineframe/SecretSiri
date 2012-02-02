SecretSiri - Siri Server by Inlineframe
==========

About
-----

Author: Allen Awesome

Email: admin@secretsiri.webuda.com

Twitter: http://twitter.com/Inlineframe

SecretSiri, siri server is an intelligent server can handle many connections at the same time, with auto restart script and the special part that the 4S Keys can't get banned.


Features
--------------------
-Thousands of connectoins at the same time, yes that's right!

-One certificate for all devices: Both Siri Capable devices (currently only iPhone4s) and older devices are using the same certificate and the same port (443 default for SSL)

-Bug Free, Never worry if the server has crashed it will auto restart ;-) 

Set-up Instructions
-------------------


**Set up DNS**

Before you can use SecretSiri, you must set up a DNS server on your network to forward requests for guzzoni.apple.com to the computer running the proxy (make sure that computer is not using your DNS server!). I recommend dnsmasq for this purpose. It's easy to get running and can easily handle this sort of behavior. ([http://www.youtube.com/watch?v=a9gO4L0U59s](http://www.youtube.com/watch?v=a9gO4L0U59s))
Also if you dont have static ip you can use this dns python server by JimmyKane, ([https://github.com/jimmykane/Roque-Dns-Server]).


**Cloning my repo**
	
     A. launch terminal (if you don't know how to do, then go to sleep ;P)
    
     B. 	cd ~
	
     C. 	apt-get install git
	
     D. 	git clone https://inlineframe@github.com/inlineframe/SecretSiri.git

**Setup all required stuff**

I Packaged all the setup scripts in 1 file:

1. For ubuntu user (Must be logged in as root):

	A.  	cd SecretSiri

	B.	chmod 777 ubuntu.sh

	C.	./ubuntu.sh	

2. For Debian user (Must be logged in as root):   

	A.  	cd SecretSiri

	B.	chmod 777 debian.sh 

	C.	./debian.sh


**Replacing Openssl (For adding 2 common names)** 

    1. Making OpenSSL backup
    
        sudo mv /etc/ssl/openssl.cnf /etc/ssl/openssl.cnf.bak

    2. Adding new OpenSSL

        sudo mv openssl.cnf /etc/ssl/openssl.cnf
         

**Generating Certificates**
    
	1. Changing directory

        cd Server

    2. Changing permissions

        chmod +x create.sh

    3. Generating certificates

        ./create.sh
    
    Note: The 1st common name: guzzoni.apple.com, 2nd common name: IP/DNS 

	
**Installing Certificates**
       Mail your certificate to your self and install it on both (iPhone 4S, old_iDevice)
       
	It's located in  home/USERNAME/SecretSiri/Server/ca.crt

	
**Making the keys directory to dump keys**

        cd /root/SecretSiri
	
	mkdir keys 


**Dumping 4S keys**
   
    1. Changing directory
    
    	cd Server 

    2. Changing the permission

        chmod +x reopen.sh
		

    3. Running the grabber

        ./reopen.sh
		

**Getting the 4S Ready**

    1. Go to Settings-->Wifi-->The Little Blue Arrow near your network--->Change the DNS to you server IP
	
	2. Turn On AirPlane Mode-->Turn AirPlane Mode Off-->Ask siri something
	
Now you should see some writings on the Screen now, and your 4S Keys must be dumped to the "keys" directory.


**Getting Siri on the old_iDevices**

   1. Install the same certificate you just installed earlier on the 4S.
   
   2. Go to "Cydia" and install "Spire" 

   3. Go to Settings-->Change the Proxy Host to "IP/DNS of your server"
   
   4. Go to Settings-->General-->Siri-->Disable Siri-->Enable Siri


**Turning on the SecretSiri Server**

    1. Changing Permissions
    
    sudo chmod +x reopen2.sh

	2. Running SecretSiri Server

    ./reopen2.sh


**Running Siri on old_iDevices**

    1. Reboot iDevice
	
	2. Try Siri, and it should work if you followed all the steps exactly!
	
	
	
FAQ
---

**Will this let me run Siri on my iPhone 4, iPod Touch, iPhone 3G, Microwave, etc?**

Yes. If you Grabbed the keys correctly

**How do I set up a DNS server to forward Guzzoni.apple.com traffic to my computer?**

Check out this video on youtube: 

[http://www.youtube.com/watch?v=a9gO4L0U59s](http://www.youtube.com/watch?v=a9gO4L0U59s)


**How do I remove the certificate from my iPhone when I'm done?**

Just go into your phone's Settings app, then go to "General->Profiles".


Acknowledgements
---------------

**Greetings and big thanks to all the following...**

  @plamoni http://twitter.com/plamoni

  @Grant Paul (chpwn) https://twitter.com/chpwn

  @Pod2g https://twitter.com/pod2g

  @iH8sn0w https://twitter.com/iH8sn0w

  @MuscleNerd https://twitter.com/MuscleNerd 

  @comex https://twitter.com/comex
  
  @JimmyKane http://twitter.com/JimmyKane9

Disclaimer
----------

**Warning**
I'm not resposible of any damage affect your iDevice with installing Siri Ports or missing with your Linux system.

**End**

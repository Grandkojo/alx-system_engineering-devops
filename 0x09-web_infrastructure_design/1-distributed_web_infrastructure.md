A user wants to access the website by typing www.foobar.com in their browser

The computer sends a DNS query to resolve the domain name to an IP address

The DNS returns the address of the load balancer, HAproxy, which is responsible for distributing traffic to the web  servers

The computer then sends an HTTP request to the load balancer.

The server load balancer receives the request and sends it to one of the web server (NGINX) using the configured distribution algorithm

NGINX sends it to the application server, which processes the request and generates a response

The data for display may be stored in a Database, the application server retrieves it from the MySQL database

Once the response is generated, it is sent back to NGINX, which sends it to the user`s  computer

The browser receives the response and displays the website

To the additonal information about the infrastructure:

I added two new servers to increase redundancy and reduce the risk of a Single Point Of Failure (SPOF)

I also added a load balancer (HAproxy) to distribute incoming traffic from mulitple web servers, imporve the performance and reduce downtime

The distribution algorithm used by the load balancer can vary depending on the specific needs of the system. Some common algorithms include round-robin, least connections, and IP hash.

The load balancer can be configured in either an Active-Active or Active-Passive setup. In an Active-Active setup, all servers are actively processing requests at all times. In an Active-Passive setup, one server is designated as the primary server and handles all requests until it fails, at which point a secondary server takes over.

A database Primary-Replica (Master-Slave) cluster works by having one Primary node that handles all write operations and one or more Replica nodes that handle read operations. The Primary node replicates its data to the Replica nodes in real-time to ensure data consistency.

In regard to the application, the Primary node is respnsible for andling all write operations while the Replica nodes handle read operations

The issues with this infrastructure is :
There is still a risk of a Single Point of Failure; if any component, example the load balancer or the database, the entire website becomes unavailable

There can be be a security breach if no firewall or HTTPS is used

There is not a monitoring application set to detect and espond to issues

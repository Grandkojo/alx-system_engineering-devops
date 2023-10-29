A user wants to access the website by typing www.foobar.com in their browser

The computer sends a DNS query to resolve the domain name to an IP address

The DNS returns the address of the load balancer, HAproxy, which is responsible for distributing traffic to the web  servers

The computer then sends an HTTP request to the load balancer.

The server load balancer receives the request and sends it to one of the web server (NGINX) using the configured distribution algorithm

NGINX sends it to the application server, which processes the request and generates a response

The data for display may be stored in a Database, the application server retrieves it from the MySQL database

Once the response is generated, it is sent back to NGINX, which sends it to the user's computer

The browser receives the response and displays the website

A user wants to access the website by typing www.foobar.com in their browser

The computer sends a DNS query to resolve the domain name to an IP address

The DNS returns the address of the load balancer, HAproxy, which is responsible for distributing traffic to the web  servers

The computer then sends an HTTP request to the load balancer.

The load balancer receives the request and terminates the SSL connection using an SSL connection for www.foobar.com  and forwards it to one of the  web server (NGINX) using the configured distribution algorithm

NGINX receives the request and passes it through a firewall, which filters incoming traffic based on predefined rules

NGINX sends it to the application server, which processes the request and generates a response

The data for display may be stored in a Database, the application server retrieves it from the MySQL database

Once the response is generated, it is sent back to NGINX, which sends it to the user`s computer

The browser receives the response and displays the website

To the additional information about this infrastructure:
I added three firewalls to each server to imporve security by filtering incoming traffic based on predefined rules

I am using an SSL certificaate to serve traffic over HTTPS, which encrypts data in transit between the user`s computer and the server

I also included three monitoring clients(data collectors for sumologic or other monitoring services) to monitor various aspects of the systems perforamnce in real-time.

Specifics:
Firewalls are used to control incoming and outgoing network traffic based on predefined rules. They can help to protect against unauthorized access and other security threats

Serving traffic over HTTPS helps to protect against interception and tampering of data in transit by encrypting it using SSL/TLS.

Monitoring is used to collect data on various aspects of system performance, such as CPU usage, memory usage, network traffic, and more. This data can be used to detect issues in real-time and respond accordingly.

Issues:
Terminating SSL at the load balancer level can be an issue because it means that data is decrypted before being forwarded to the web servers, potentially exposing it to interception or tampering.

Having only one MySQL server capable of accepting writes can be an issue because it creates a Single Point of Failure (SPOF) for write operations

Having servers with all the same components (database, web server, and application server) can be a problem because it increases complexity and makes it more difficult to scale individual components as needed

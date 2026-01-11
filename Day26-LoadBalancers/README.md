# AWS Load Balancers:

** Detailed Comparison**
This document provides a detailed comparison of AWS Load Balancers, including Application Load Balancer (ALB), Network Load Balancer (NLB), and Gateway Load Balancer (GWLB), along with an overview of the OSI model relevant to their operation.
**
What is a Load Balancer?**

A load balancer distributes incoming network traffic across multiple servers, ensuring that no single server is overwhelmed. This prevents slowness and downtime, providing a highly available application experience to users. When an application gains popularity and the number of users increases beyond what a single instance can handle, multiple instances are deployed, and a load balancer is placed in front of them to manage incoming requests.


Load balancing techniques can vary, from simple round-robin distribution (equal distribution of requests) to more advanced ratio-based or weight-based balancing, where more powerful instances receive a larger share of the traffic.

## OSI Model Overview

Understanding the OSI (Open Systems Interconnection) model's seven layers is crucial because different load balancers operate at different layers.


**Layer 7: Application Layer**

This layer deals with specific network protocols such as HTTP, FTP, SFTP. It's where user applications initiate requests.

**Layer 6: Presentation Layer**
Handles data formatting, encryption, and decryption, including SSL/TLS for secure communication.

**
**
Manages sessions between applications, handling communication channels and session objects.

**Layer 4: Transport Layer**

A critical layer where requests are segmented into smaller packets (TCP or UDP). It ensures secure and reliable transmission of data, preventing data loss.

**Layer 3: Network Layer**

Responsible for routing packets across networks using IP addresses, typically involving routers.

**Layer 2: Data Link Layer**

Handles data transfer between network nodes, often involving switches.

**Layer 1: Physical Layer**

Deals with the physical medium of data transmission, such as cables and hardware connections.


**Types of AWS Load Balancers**


The choice of load balancer depends on the application's requirements and the OSI layer at which traffic routing is needed.



### 1. Application Load Balancer (ALB)

Layer of Operation: Layer 7 (Application Layer)

Capabilities:

Intercepts and reads HTTP requests (headers, paths, hosts).
Supports advanced routing based on URL paths (amazon.com/payments to payment service), hostnames (amazon.com vs amazon.in), or query parameters.
Can perform SSL offloading, allowing the ALB to handle SSL/TLS encryption/decryption, thus offloading this task from backend servers.
Supports ratio-based routing based on HTTP requests.


**Characteristics:**

More costly due to advanced capabilities and deeper inspection of traffic.
Slightly slower due to the latency involved in intercepting and analyzing Layer 7 requests.
Use Cases: Web applications, microservices, and applications requiring complex routing decisions based on content of the request.


#### 2. Network Load Balancer (NLB)


Layer of Operation: Layer 4 (Transport Layer)


**Capabilities:**

Performs load balancing based on IP address and port number.
Handles TCP and UDP packets, focusing on high transmission and low latency.
Can create sticky sessions, ensuring that all requests from a single user during a session are directed to the same backend server (e.g., for long video streams).


**Characteristics:**

Less costly than ALB.
Very fast with extremely low latency, as it does not intercept or modify Layer 7 requests.
Use Cases: Gaming servers, video streaming platforms, high-performance computing, and applications where even a slight delay is unacceptable.


#### 3. Gateway Load Balancer (GWLB)

Primary Purpose: Used for deploying and managing virtual appliances.

Use Cases: Specifically designed for third-party virtual appliances such as firewalls, intrusion detection/prevention systems (IDS/IPS), and VPNs.

**Characteristics:** 

Offers high security, capable of sending highly encrypted packets to virtual appliances.
Handles specific traffic types that ALBs and NLBs are not suited for, ensuring secure and efficient operation of security and networking appliances.

**Conclusion**

DevOps engineers and application developers collaborate to decide which load balancer to use, taking into consideration the application's requirements for traffic routing, performance, security, and the specific layer of the OSI model at which load balancing needs to occur.




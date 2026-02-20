# 📡 Project: Activemq-Docker

Project ActiveMQ-Docker builds and deploys ActiveMQ-Server, ActiveMQ-Consumer and ActiveMQ-Client within a single container.

## 📖 Usage

### 1️⃣ Pre-requisites:

#### Software:
      
```text
Open JDK version 21
```

This example uses a docker host network and expects the following ports to be available on the local host.

```text
EXPOSE 22
EXPOSE 80
EXPOSE 443
EXPOSE 8080
EXPOSE 8161
EXPOSE 8443
EXPOSE 61616
```
        
### 2️⃣ Build:

Navigate to project home directory and execute the following commands

```bash
cd bin
./compile-[dev]
```

### 2️⃣ Interface:

ActiveMQ Admin Interface http://localhost:8161/admin/

### 2️⃣ Components:

The following components are built, configured and delployed.

activemq-client to publish transactions

```bash
cd bin
directory contains sample commands to publish over tomcat rest service.
```

activemq-consumer to consume transactions

```bash
cd bin
directory contains sample commands to consume directly with activemq daemon.
```

activemq-server to access activemq API (limited) over web-server

```bash
this runs without tomcat (fronted by apache with self-signed cert)
```

Place an ssh public key in artefact/pub/authorized_keys (as per in the checked-in example) and it will be configured as part of the build. 

Once built you will be able to ssh into the server using command

```bash
ssh root@localhost
```

### 4️⃣ Service:

The servlet exposes the following REST API URL base 
    
```text
http(s)://<domain>/activemq/log
```  



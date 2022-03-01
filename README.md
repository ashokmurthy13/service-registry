# service-registry

* This is a Service Discovery application for the microservices - Savings Service A and B
* Used netflix eureka server to configure the service discovery

## Build & Run

### Build

```
>gradlew build
```

### Run as Docker Container

Go to the application home folder and run the below commands to create the docker image and run the container
```
docker build -t service/discovery .
```
Check the image is build successfully
```
docker images

service/discovery    latest         56c810c0ff74   18 hours ago   149MB
```
Run the image
```
docker run --rm -d -v /home/users/logs:/logs -p 8761:8761 --name service-discovery service/discovery
```
Check the container started
```
docker ps

ef95e3d21074   service/discovery   "java -Djava.securit…"   12 seconds ago   Up 10 seconds   0.0.0.0:8761->8761/tcp   service-discovery
```
Note: Please use your desired location for log files in the above command: -v ${PATH_TO_LOCAL_FOLDER}:/logs

## Eureka Dashboard

http://localhost:8761

You can check the instances currently registered with Eureka.
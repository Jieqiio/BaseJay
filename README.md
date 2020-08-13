# BaseJay: Docker Dev. Kit

![](basejay.gif)

BaseJay is part of [The Open EdgeComputing Hardware Project](https://jieqi.io/open.html).
Create your own software with BaseJay Docker Development Kit on linux, Mac and windows, we recommend the visual studio code as the IDE.

## Requirements

* docker
* standard *nix environment

## Build instructions 

```
git clone https://github.com/Jieqiio/BaseJay.git
cd basejay
docker build -t basejay:latest .
docker run -dt --name basejay basejay
```

## to build helloworld
```
./scripts/deploy-hellworld.sh basejay
```

## to build libmodbus
```
./scripts/deploy-libmodbus.sh basejay
```

## to build all of basejay
```
./scripts/buildall.sh basejay
```

## File structure

```
packages       # packages library
    helloworld      # example 
    libmodbus      # modbus library
    iperf          # iperf
    SOEM           # EtherCAT Master
    fanuc-control # fanuc control
    p-net          # p-net Profinet device stack
    MQTT-C         # MQTT
external       # external libraries
build          # build results
docker_scripts # scripts copied into docker image to run build task
scripts        # scripts to be run on host OS
```

## Contact

- [The EdgeComputing Open hardware Project](https://jieqi.io/open.html)
- email: open@jieqi.io


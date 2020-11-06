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

## Build packages
```
git submodule add https://github.com/esnet/iperf.git packages/iperf
cp docker_scripts/build-hellworld.sh docker_scripts/build-iperf.sh
cp scripts/deploy-hello.sh scripts/deploy-iperf.sh
```
- Edit `docker_script/build-iperf.sh` based on its compile procedures
- Edit `scripts/deploy-iperf.sh` 

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
    zstd           # Zstandard - Fast real-time compression algorithm
external       # external libraries
build          # build results
docker_scripts # scripts copied into docker image to run build task
scripts        # scripts to be run on host OS
```

## Contact

- [The EdgeComputing Open hardware Project](https://jieqi.io/open.html)
- email: open@jieqi.io

## TODO
### Immediate Feature Goals

- [x] OPC-UA: https://github.com/open62541/open62541
- [x] FreeOpc-UA: https://github.com/FreeOpcUa/freeopcua
- [x] TDengine:  https://github.com/taosdata/TDengine
- [x] memcached: https://github.com/memcached/memcached
- [x] IndigoSCADA https://github.com/brucebot/IndigoSCADA.git
### Midterm Feature Goals
- [x] CODESYS Integration
- [x] PowerLink Slave

### Longterm Feature Goals
- [x] Package Manger System


We accept pull requests. Kindly add comments to your code before sending one.

## Buy a JayBox Develop Board/购买开发板

- [https://item.taobao.com/item.htm?id=631074665039](https://item.taobao.com/item.htm?id=631074665039)

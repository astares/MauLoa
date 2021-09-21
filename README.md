# MauLoa
Documentation that last forever

## Quick guide

### Load Pharo 9 using ZeroConf 

```
wget -O- get.pharo.org/64/90+vm | bash
./pharo-ui Pharo.image
```

### Load all in one

```Smalltalk
  Metacello new
      baseline:'MauLoa';
      repository: 'github://astares/MauLoa:master/src';
      load
```

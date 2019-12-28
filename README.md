# httpc bench
Erlang HTTP client benchmarking suite

## How-to
```
rebr3 compile
./start_server.sh
Server started...
./start_test.sh

Running benchmark...
Client    PoolSize  Concurency  Requests/s  Error %
===================================================
erlArango        8          32       44820      0.0
erlArango        8          64       49112      0.0
erlArango        8         128       46648      0.0
erlArango        8         512       44487      0.0
erlArango        8        2048       44910      0.0
erlArango        8        4096       40621      0.0
erlArango       16          32       53005      0.0
erlArango       16          64       50330      0.0
erlArango       16         128       44020      0.0
erlArango       16         512       37034      0.0
erlArango       16        2048       38893      0.0
erlArango       16        4096       36109      0.0
erlArango       32          32       46067      0.0
erlArango       32          64       46624      0.0
erlArango       32         128       42264      0.0
erlArango       32         512       40544      0.0
erlArango       32        2048       41337      0.0
erlArango       32        4096       38331      0.0
erlArango       64          32       39626      0.0
erlArango       64          64       52286      0.0
erlArango       64         128       57124      0.0
erlArango       64         512       45812      0.0
erlArango       64        2048       51356      0.0
erlArango       64        4096       55046      0.0
erlArango      128          32       49466      0.0
erlArango      128          64       52437      0.0
erlArango      128         128       63780      0.0
erlArango      128         512       56236      0.0
erlArango      128        2048       61235      0.0
erlArango      128        4096       58688      0.0
erlArango      256          32       46206      0.0
erlArango      256          64       52001      0.0
erlArango      256         128       59363      0.0
erlArango      256         512       65438      0.0
erlArango      256        2048       67686      0.0
erlArango      256        4096       63923      0.0
"erlArango" test over-----------------------------
hackney          8          32       11374      0.0
hackney          8          64       10048      0.0
hackney          8         128        9817      0.0
hackney          8         512        9396      0.0
hackney          8        2048        9445      0.0
hackney          8        4096        9133      0.0
hackney         16          32       11015      0.0
hackney         16          64       11850      0.0
hackney         16         128       11222      0.0
hackney         16         512       12083      0.0
hackney         16        2048       12658      0.0
hackney         16        4096       11514      0.0
hackney         32          32       10869      0.0
hackney         32          64       12309      0.0
hackney         32         128       11664      0.0
hackney         32         512       13149      0.0
hackney         32        2048       13500      0.0
hackney         32        4096       12361      0.0
hackney         64          32       10563      0.0
hackney         64          64        9857      0.0
hackney         64         128       10083      0.0
hackney         64         512       13537      0.0
hackney         64        2048       13640      0.0
hackney         64        4096       11460      0.0
hackney        128          32        9537      0.0
hackney        128          64       10662      0.0
hackney        128         128        9784      0.0
hackney        128         512       11828      0.0
hackney        128        2048       13078      0.0
hackney        128        4096       12303      0.0
hackney        256          32       11666      0.0
hackney        256          64       10836      0.0
hackney        256         128       10031      0.0
hackney        256         512        9774      0.0
hackney        256        2048       10505      0.0
hackney        256        4096       10697      0.0
"hackney" test over-----------------------------
httpc            8          32        8492      0.0
httpc            8          64        9101      0.0
httpc            8         128        9386      0.0
httpc            8         512        9398      0.0
httpc            8        2048       14089      0.0
httpc            8        4096        7806      0.0
httpc           16          32        8759      0.0
httpc           16          64        9207      0.0
httpc           16         128        9278      0.0
httpc           16         512        8983      0.0
httpc           16        2048        8677      0.0
httpc           16        4096        8000      0.0
httpc           32          32        9789      0.0
httpc           32          64        9454      0.0
httpc           32         128        9095      0.0
httpc           32         512        8691      0.0
httpc           32        2048        9165      0.0
httpc           32        4096        8134      0.0
httpc           64          32        9164      0.0
httpc           64          64        9367      0.0
httpc           64         128       11447      0.0
httpc           64         512        8951      0.0
httpc           64        2048        8815      0.0
httpc           64        4096        8804      0.0
httpc          128          32        9391      0.0
httpc          128          64        9392      0.0
httpc          128         128        9413      0.0
httpc          128         512        8483      0.0
httpc          128        2048        9180      0.0
httpc          128        4096        6063      0.0
httpc          256          32        9178      0.0
httpc          256          64        9180      0.0
httpc          256         128        9996      0.0
httpc          256         512        9044      0.0
httpc          256        2048        9459      0.0
httpc          256        4096        9002      0.0
"httpc" test over-----------------------------
ibrowse          8          32       23360      0.0
ibrowse          8          64       14265      0.0
ibrowse          8         128       12180      0.0
ibrowse          8         512       11446      0.0
ibrowse          8        2048       11397      0.0
ibrowse          8        4096       11007      0.0
ibrowse         16          32       14414      0.0
ibrowse         16          64       10885      0.0
ibrowse         16         128       10556      0.0
ibrowse         16         512       10426      0.0
ibrowse         16        2048       10677      0.0
ibrowse         16        4096       10509      0.0
ibrowse         32          32        9239      0.0
ibrowse         32          64        9244      0.0
ibrowse         32         128        9550      0.0
ibrowse         32         512        9952      0.0
ibrowse         32        2048        9810      0.0
ibrowse         32        4096        9930      0.0
ibrowse         64          32        8964      0.0
ibrowse         64          64        9414      0.0
ibrowse         64         128        8450      0.0
ibrowse         64         512        9596      0.0
ibrowse         64        2048        8655      0.0
ibrowse         64        4096        9215      0.0
ibrowse        128          32        7809      0.0
ibrowse        128          64        8229      0.0
ibrowse        128         128        8779      0.0
ibrowse        128         512        8931      0.0
ibrowse        128        2048        9197      0.0
ibrowse        128        4096        9174      0.0
ibrowse        256          32        6714      0.0
ibrowse        256          64        7373      0.0
ibrowse        256         128        7641      0.0
ibrowse        256         512        7377      0.0
ibrowse        256        2048        7024      0.0
ibrowse        256        4096        7577      0.0
"ibrowse" test over-----------------------------
```

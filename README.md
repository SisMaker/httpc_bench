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
erlArango        8          32       44967      0.0
erlArango        8          64       43179      0.0
erlArango        8         128       45936      0.0
erlArango        8         512       45556      0.0
erlArango        8        2048       46913      0.0
erlArango        8        4096       46856      0.0
erlArango       16          32       71328      0.0
erlArango       16          64       75638      0.0
erlArango       16         128       68822      0.0
erlArango       16         512       69262      0.0
erlArango       16        2048       65584      0.0
erlArango       16        4096       62340      0.0
erlArango       32          32       72694      0.0
erlArango       32          64       73330      0.0
erlArango       32         128       66284      0.0
erlArango       32         512       65821      0.0
erlArango       32        2048       68939      0.0
erlArango       32        4096       64361      0.0
erlArango       64          32       69256      0.0
erlArango       64          64       78201      0.0
erlArango       64         128       83243      0.0
erlArango       64         512       79646      0.0
erlArango       64        2048       76385      0.0
erlArango       64        4096       75061      0.0
erlArango      128          32       65845      0.0
erlArango      128          64       77676      0.0
erlArango      128         128       79410      0.0
erlArango      128         512       78440      0.0
erlArango      128        2048       80263      0.0
erlArango      128        4096       75772      0.0
erlArango      256          32       61629      0.0
erlArango      256          64       71313      0.0
erlArango      256         128       79275      0.0
erlArango      256         512       80925      0.0
erlArango      256        2048       78608      0.0
erlArango      256        4096       76949      0.0
"erlArango" test over-----------------------------
hackney          8          32       15075      0.0
hackney          8          64       14190      0.0
hackney          8         128       13782      0.0
hackney          8         512       14777      0.0
hackney          8        2048       13650      0.0
hackney          8        4096       14108      0.0
hackney         16          32       17242      0.0
hackney         16          64       16513      0.0
hackney         16         128       14781      0.0
hackney         16         512       17486      0.0
hackney         16        2048       17989      0.0
hackney         16        4096       17495      0.0
hackney         32          32       15604      0.0
hackney         32          64       17874      0.0
hackney         32         128       17350      0.0
hackney         32         512       18734      0.0
hackney         32        2048       19976      0.0
hackney         32        4096       18117      0.0
hackney         64          32       15088      0.0
hackney         64          64       14131      0.0
hackney         64         128       17357      0.0
hackney         64         512       18273      0.0
hackney         64        2048       19667      0.0
hackney         64        4096       18667      0.0
hackney        128          32       15475      0.0
hackney        128          64       14157      0.0
hackney        128         128       12768      0.0
hackney        128         512       16478      0.0
hackney        128        2048       16821      0.0
hackney        128        4096       16323      0.0
hackney        256          32       15658      0.0
hackney        256          64       14152      0.0
hackney        256         128       12763      0.0
hackney        256         512       14382      0.0
hackney        256        2048       14312      0.0
hackney        256        4096       13625      0.0
"hackney" test over-----------------------------
httpc            8          32        8915      0.0
httpc            8          64        9972      0.0
httpc            8         128        9861      0.0
httpc            8         512       10160      0.0
httpc            8        2048        9876      0.0
httpc            8        4096        8762      0.0
httpc           16          32       10078      0.0
httpc           16          64        9858      0.0
httpc           16         128        9864      0.0
httpc           16         512       10120      0.0
httpc           16        2048        6201      0.0
httpc           16        4096        9283      0.0
httpc           32          32        9926      0.0
httpc           32          64        9867      0.0
httpc           32         128        9338      0.0
httpc           32         512        9669      0.0
httpc           32        2048        7964      0.0
httpc           32        4096        9049      0.0
httpc           64          32        8971      0.0
httpc           64          64        9601      0.0
httpc           64         128       10062      0.0
httpc           64         512        8411      0.0
httpc           64        2048        9671      0.0
httpc           64        4096        9385      0.0
httpc          128          32        9843      0.0
httpc          128          64       10042      0.0
httpc          128         128       10135      0.0
httpc          128         512        9307      0.0
httpc          128        2048        9149      0.0
httpc          128        4096        9506      0.0
httpc          256          32       10017      0.0
httpc          256          64        9883      0.0
httpc          256         128       10121      0.0
httpc          256         512        9658      0.0
httpc          256        2048        7016      0.0
httpc          256        4096        9839      0.0
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

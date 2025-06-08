# mul3 組合語言測試結果

## 測試指令

```bash
gcc -std=c99 mul3main.c mul3.s -o mul3test
./mul3test
```

## 輸出結果

```
mul3(3,2,5)=30
```

## 另一個測試程式 mul3test.c 執行結果

```bash
gcc -std=c99 mul3test.c mul3.s -o mul3test2
./mul3test2
```

```
mul3(4,5,6)=120
```

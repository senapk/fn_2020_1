Leia uma lista e verifique se está ordenada

```hs
main = do
    line <- getLine
    let vet = [read x :: Int | x <- words line]
    print $ estaOrdenado vet
```


```hs
estaOrdenada [1,2,3,4,5] ==> True
estaOrdenada [1,2,3,4,5,4] ==> False
```

```
>>>>>>>>
1
========
True
<<<<<<<<

>>>>>>>>
1 2 3 4
========
True
<<<<<<<<

>>>>>>>>
1 2 3 4 3
========
False
<<<<<<<<

>>>>>>>>
1 1 0 2 3 4 3
========
False
<<<<<<<<

>>>>>>>>
-1 -1 0 2 3 4 6
========
True
<<<<<<<<

```

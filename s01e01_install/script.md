Insira a seguinte função no final do seu .bashrc ou .zshrc

```bash
function mh {
    echo '$' ghc $1.hs -o $1.out && ghc $1.hs -o $1.out && echo "" &&
    rm *.hi *.o &&
    echo '$' ./$1.out && ./$1.out && 
    rm *.out
}
```

Se o nome do seu código fonte for `Main.hs`, basta digitar `mh Main` no terminal, 
que ele vai compilar, limpar os arquivos temporários e ao fim limpar o executável.

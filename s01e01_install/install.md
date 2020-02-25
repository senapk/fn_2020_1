## configurando ambiente no ubuntu

```
sudo apt install libicu-dev libncurses-dev libgmp-dev git build-essential libicu-dev libtinfo-dev libgmp-dev libc6-dev libffi-dev git g++ gcc make xz-utils zlib1g-dev gnupg curl
```

- usando ghcup para instalar - ghc, ghci, cabal
    - ghc é o compilador
    - ghci é o intepretador
    - cabal é o gerenciador de pacotes
```
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
```

- adicione essa linha no seu .profile
```
source '/home/tiger/.ghcup/env'
```
- deslogue e logue
- habilite a versão mais estável do ghc - ghc 8.6.5
```
ghcup set 8.6.5
```
- instalar biblioteca para fazer o parse de input de vetores
```
cabal install split
```
# install hie using cabal
```
git clone https://github.com/haskell/haskell-ide-engine --recurse-submodules
cd haskell-ide-engine
./cabal-hie-install hie-8.6.5
```
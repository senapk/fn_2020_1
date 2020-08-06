nomes = ["david", "henrique", "kassiane", "marcelo"]
letras = [len(x) for x in nomes]
vetorDeTuplas = list(zip(nomes, letras))

for n, l in vetorDeTuplas:
    print(n, l)

for n, l in vetorDeTuplas:
    print(n, l)

for n, l in vetorDeTuplas:
    print(n, l)


sorted(vetorDePessoas, lambda pessoa: pessoa.idade)
x = lambda y: y + 3

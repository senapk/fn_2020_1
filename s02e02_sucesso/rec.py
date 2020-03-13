
def print_head(lista):
    if len(lista) == 0:
        return
    print_head(lista[1:])
    print(lista[0], end = " ")

def soma(lista):
    if len(lista) == 0:
        return 0
    return lista[0] + soma(lista[1:])

def inverter(lista, inicio, fim):
    if fim - inicio < 2:
        return
    lista[inicio], lista[fim] = lista[fim], lista[inicio]
    inverter(lista, inicio + 1, fim - 1)

lista = range(0, 10)
print_head(lista)

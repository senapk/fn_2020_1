def boomBang(xs):
    return [str(x) + ("boom" if x < 10 else "bang") for x in xs if x % 2 == 0]

print(boomBang(range(1, 20)))
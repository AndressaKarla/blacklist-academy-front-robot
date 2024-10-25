import random, json

def gerar_numeros_aleatorios(qtde_numeros):
    possible = "0123456789"
    text = ''.join(random.choice(possible) for _ in range(qtde_numeros))
    
    return text

def mod(dividendo, divisor):
    return round(dividendo - (dividendo // divisor) * divisor)

def gerar_cpf():
    rnd = lambda n: round(random.random() * n)
    n = [rnd(9) for _ in range(9)]

    d1 = 11 - mod(sum([n[i] * (10 - i) for i in range(9)]), 11)
    d1 = 0 if d1 >= 10 else d1

    d2 = 11 - mod(d1 * 2 + sum([n[i] * (11 - i) for i in range(9)]), 11)
    d2 = 0 if d2 >= 10 else d2

    return f"{''.join(map(str, n))}{d1}{d2}"

def gerar_nome_completo():
    nome_completo = "ADMIN Blacklist"

    return nome_completo

def gerar_email_usuario():
    email = "admin.blacklist" + gerar_numeros_aleatorios(6) + "@qacoders.com"

    return email 

def carregar_fixture(nome_fixture):
    with open(f'resources/fixtures/{nome_fixture}.json', 'r', encoding='utf-8') as fixture:
        return json.load(fixture)
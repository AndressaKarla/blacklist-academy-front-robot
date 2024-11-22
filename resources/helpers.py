import random, json

def word_check(word):
    word_3_letters = list(word.lower())
    cont = 0
    if word_3_letters[0] == "b":
        cont += 1
    if word_3_letters[1] == "l":
        cont += 1
    if word_3_letters[2] == "a":
        cont += 1
    
    if cont == 3:
        return 1
    elif cont < 3 or cont > 3:
        return 2

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

def gerar_cnpj():
    n1  = gerar_numeros_aleatorios(1)
    n2  = gerar_numeros_aleatorios(1)
    n3  = gerar_numeros_aleatorios(1)
    n4  = gerar_numeros_aleatorios(1)
    n5  = gerar_numeros_aleatorios(1)
    n6  = gerar_numeros_aleatorios(1)
    n7  = gerar_numeros_aleatorios(1)
    n8  = gerar_numeros_aleatorios(1)
    n9  = '0'
    n10 = '0'
    n11 = '0'
    n12 = '1'

    d1 = int(n12)*2 + int(n11)*3 + int(n10)*4 + int(n9)*5 + int(n8)*6 + int(n7)*7 + int(n6)*8 + int(n5)*9 + int(n4)*2 + int(n3)*3 + int(n2)*4 + int(n1)*5
    d1 = 11 - mod(d1, 11)
    d1 = 0 if d1 >= 10 else d1

    d2 = d1*2 + int(n12)*3 + int(n11)*4 + int(n10)*5 + int(n9)*6 + int(n8)*7 + int(n7)*8 + int(n6)*9 + int(n5)*2 + int(n4)*3 + int(n3)*4 + int(n2)*5 + int(n1)*6
    d2 = 11 - mod(d2, 11)
    d2 = 0 if d2 >= 10 else d2

    return f"{n1}{n2}{n3}{n4}{n5}{n6}{n7}{n8}{n9}{n10}{n11}{n12}{d1}{d2}"

def gerar_nome_completo():
    nome_completo = "ADMIN Blacklist"

    return nome_completo

def gerar_email_usuario():
    email = "admin.blacklist" + gerar_numeros_aleatorios(6) + "@qacoders.com"

    return email 

def carregar_fixture(nome_fixture):
    with open(f'resources/fixtures/{nome_fixture}.json', 'r', encoding='utf-8') as fixture:
        return json.load(fixture)
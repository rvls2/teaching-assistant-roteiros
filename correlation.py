import math

def calcular_correlacao(X, Y):
    n = len(X)
    media_x = sum(X) / n
    media_y = sum(Y) / n
    
    numerador = sum((x - media_x) * (y - media_y) for x, y in zip(X, Y))
    
    soma_quadrados_x = sum((x - media_x) ** 2 for x in X)
    soma_quadrados_y = sum((y - media_y) ** 2 for y in Y)
    denominador = math.sqrt(soma_quadrados_x * soma_quadrados_y)
    
    if denominador == 0:
        return 0  # Evita divisão por zero se não houver variação
        
    return numerador / denominador

# Exemplo de uso:
notas = [5.0, 7.0, 9.0]
tempo = [30, 10, 20]

print(calcular_correlacao(notas, tempo))

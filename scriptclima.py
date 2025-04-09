import json

with open(r'D:\Maximiliano Mateluna\PrograPrueba\clima.json', encoding='utf-8', mode='r') as datos:
    clima = json.load(datos)

def infoclima():
    print("Ciudades")
    for ciudad in clima["ciudades"]:
        print("=====================")
        print(f"Ciudades: {ciudad ["nombre"]}")
        print("---------------------")
        for cielo in ciudad["pais"]:
            estado = "Parcialmente nublado" if cielo["Parcialmente nublado"] else "Cielo despejado"
            print(f"")

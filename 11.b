def mostrar_planeta_personajes(cola, nombres):
    print("Planeta natal de los personajes solicitados:")
    
    for i in range(cola.tamanio()):
        personaje = cola.desencolar()
        
        if personaje["nombre"] in nombres:
            print(f"{personaje['nombre']} es de {personaje['planeta']}")
        
        cola.encolar(personaje)

nombres_buscar = ["Luke Skywalker", "Han Solo"]
mostrar_planeta_personajes(cola_personajes, nombres_buscar)

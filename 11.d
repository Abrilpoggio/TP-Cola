def eliminar_personaje_despues_de(cola, nombre_referencia):
    nueva_cola = Cola()
    eliminar_siguiente = False
    
    for i in range(cola.tamanio()):
        personaje = cola.desencolar()
        
        if eliminar_siguiente:
            eliminar_siguiente = False
            continue
        
        nueva_cola.encolar(personaje)
        
        if personaje["nombre"] == nombre_referencia:
            eliminar_siguiente = True
    
    while not nueva_cola.esta_vacia():
        cola.encolar(nueva_cola.desencolar())

eliminar_personaje_despues_de(cola_personajes, "Jar Jar Binks")

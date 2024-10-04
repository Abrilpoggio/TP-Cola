def insertar_personaje_antes_de(cola, nuevo_personaje, nombre_referencia):
    nueva_cola = Cola()
    personaje_insertado = False
    
    for i in range(cola.tamanio()):
        personaje = cola.desencolar()
        
        if personaje["nombre"] == nombre_referencia and not personaje_insertado:
            nueva_cola.encolar(nuevo_personaje)
            personaje_insertado = True
        
        nueva_cola.encolar(personaje)
    
    while not nueva_cola.esta_vacia():
        cola.encolar(nueva_cola.desencolar())

nuevo_personaje = {"nombre": "Ahsoka Tano", "planeta": "Shili"}
insertar_personaje_antes_de(cola_personajes, nuevo_personaje, "Yoda")

class Cola:
    def __init__(self):
        self.items = []
    
    def encolar(self, item):
        self.items.append(item)
    
    def desencolar(self):
        if not self.esta_vacia():
            return self.items.pop(0)
    
    def esta_vacia(self):
        return len(self.items) == 0
    
    def tamano(self):
        return len(self.items)

def mostrar_personajes_masculinos(cola):
    personajes_masculinos = []
    while not cola.esta_vacia():
        personaje = cola.desencolar()
        if personaje[2] == "M":
            personajes_masculinos.append(personaje[0])
    return personajes_masculinos

cola_personajes = Cola()

cola_personajes.encolar(("Tony Stark", "Iron Man", "M"))
cola_personajes.encolar(("Steve Rogers", "Capitán América", "M"))
cola_personajes.encolar(("Natasha Romanoff", "Black Widow", "F"))
cola_personajes.encolar(("Carol Danvers", "Capitana Marvel", "F"))

personajes_masculinos = mostrar_personajes_masculinos(cola_personajes)
print(f"Los personajes masculinos son: {', '.join(personajes_masculinos)}")

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

def mostrar_superheroes_femeninos(cola):
    superheroes_femeninos = []
    while not cola.esta_vacia():
        personaje = cola.desencolar()
        if personaje[2] == "F":
            superheroes_femeninos.append(personaje[1])
    return superheroes_femeninos

cola_personajes = Cola()

cola_personajes.encolar(("Tony Stark", "Iron Man", "M"))
cola_personajes.encolar(("Steve Rogers", "Capitán América", "M"))
cola_personajes.encolar(("Natasha Romanoff", "Black Widow", "F"))
cola_personajes.encolar(("Carol Danvers", "Capitana Marvel", "F"))

superheroes_femeninos = mostrar_superheroes_femeninos(cola_personajes)
print(f"Los superhéroes femeninos son: {', '.join(superheroes_femeninos)}")

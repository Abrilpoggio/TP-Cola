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

def buscar_carol_danvers(cola):
    while not cola.esta_vacia():
        personaje = cola.desencolar()
        if personaje[0] == "Carol Danvers":
            return f"Carol Danvers se encuentra en la cola y su superhéroe es {personaje[1]}"
    return "Carol Danvers no se encuentra en la cola"

cola_personajes = Cola()

cola_personajes.encolar(("Tony Stark", "Iron Man", "M"))
cola_personajes.encolar(("Steve Rogers", "Capitán América", "M"))
cola_personajes.encolar(("Natasha Romanoff", "Black Widow", "F"))
cola_personajes.encolar(("Carol Danvers", "Capitana Marvel", "F"))
cola_personajes.encolar(("Scott Lang", "Ant-Man", "M"))

resultado = buscar_carol_danvers(cola_personajes)
print(resultado)

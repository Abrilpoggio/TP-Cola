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

def encontrar_superheroe_de_scott_lang(cola):
    while not cola.esta_vacia():
        personaje = cola.desencolar()
        if personaje[0] == "Scott Lang":
            return personaje[1]
    return "Personaje no encontrado"

cola_personajes = Cola()

cola_personajes.encolar(("Tony Stark", "Iron Man", "M"))
cola_personajes.encolar(("Steve Rogers", "Capitán América", "M"))
cola_personajes.encolar(("Natasha Romanoff", "Black Widow", "F"))
cola_personajes.encolar(("Carol Danvers", "Capitana Marvel", "F"))
cola_personajes.encolar(("Scott Lang", "Ant-Man", "M"))

superheroe_scott_lang = encontrar_superheroe_de_scott_lang(cola_personajes)
print(f"El superhéroe del personaje Scott Lang es: {superheroe_scott_lang}")

          

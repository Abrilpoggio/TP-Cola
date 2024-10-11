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

def mostrar_datos_con_letra_s(cola):
    datos_con_s = []
    while not cola.esta_vacia():
        personaje = cola.desencolar()
        if personaje[0].startswith("S") or personaje[1].startswith("S"):
            datos_con_s.append(personaje)
    return datos_con_s

cola_personajes = Cola()

cola_personajes.encolar(("Tony Stark", "Iron Man", "M"))
cola_personajes.encolar(("Steve Rogers", "Capitán América", "M"))
cola_personajes.encolar(("Natasha Romanoff", "Black Widow", "F"))
cola_personajes.encolar(("Carol Danvers", "Capitana Marvel", "F"))
cola_personajes.encolar(("Scott Lang", "Ant-Man", "M"))

datos_con_s = mostrar_datos_con_letra_s(cola_personajes)
for personaje in datos_con_s:
    print(f"Personaje: {personaje[0]}, Superhéroe: {personaje[1]}, Género: {personaje[2]}")

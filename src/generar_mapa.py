"""Genera un mapa interactivo (HTML) con una muestra de las bombas de agua.

Uso:
    python src/generar_mapa.py data/reto_agua.csv docs/mapa_bombas.html
(si no se pasan argumentos usa la muestra incluida en el repositorio)
"""
import sys

import folium
import pandas as pd

origen = sys.argv[1] if len(sys.argv) > 1 else "data/muestra_reto_agua.csv"
destino = sys.argv[2] if len(sys.argv) > 2 else "docs/mapa_bombas.html"

df = pd.read_csv(origen)
df = df[(df["latitude"] < -0.5) & (df["longitude"] > 29)]   # descarta coordenadas a 0 (sin GPS)
if len(df) > 4000:                                          # el HTML pesaría demasiado con las 55.000
    df = df.sample(4000, random_state=42)

mapa = folium.Map(location=[df["latitude"].mean(), df["longitude"].mean()], zoom_start=6)
for _, fila in df.iterrows():
    color = "green" if fila["status_group"] == "functional" else "red"
    folium.CircleMarker(
        location=[fila["latitude"], fila["longitude"]],
        radius=4, color=color, fill=True, fill_color=color,
        popup=f"{fila['status_group']} · {fila['waterpoint_type_group']}",
    ).add_to(mapa)

mapa.save(destino)
print(f"Mapa guardado en {destino} ({len(df)} bombas)")

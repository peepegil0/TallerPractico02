# Taller 02: "Retro-Gaming Vault" (Museo del Píxel)

## Descripción del Proyecto
Este repositorio contiene el desarrollo del Producto Mínimo Viable (MVP) "Sistemas de Información Dinámicos" aplicado a la gestión del inventario de una exposición de informática clásica. El objetivo es transformar datos estructurados desde una base de datos nativa XML (BaseX) hacia una interfaz web funcional, persistiendo la información en archivos HTML listos para el consumo del usuario final.
La integridad de los datos es absoluta: si la información no cumple con el contrato estricto definido en nuestro esquema XSD, el sistema no procesará el documento.

## Tecnologías y Estándares Utilizados
Para este desarrollo he apostado por la pureza técnica, sin recurrir a *frameworks* o librerías externas, dos archivos dependiente uno del otro:
- **BaseX y XQuery:** Para la lógica de extracción, filtrado y serialización de archivos utilizando el módulo `file:write`.
- **HTML:** Uso quirúrgico de etiquetas estructurales (`<main>`, `<section>`, `<article>`, `<header>`, `<footer>`) para un código limpio..
- **CSS Vanilla:** Maquetación moderna basada enteramente en **Flexbox** y **Grid**. Se han implementado variables CSS (`:root`) para manejar la paleta de colores (tonos neón para evocar el *Retro-Gaming*) y las tipografías.

## Consultas de Negocio (El Reto)
El sistema da solución a tres escenarios clave demandados por el cliente:
1. **Catálogo de la Era Dorada:** Un catálogo interactivo que filtra exclusivamente los ítems de tipo "Hardware" lanzados antes del año 1985.
2. **Auditoría de Valor (Condición Menta):** Un informe detallado que lista únicamente aquellos objetos cuyo estado de conservación sea 5 (Menta).
3. **Certificados:** Un buscador que, a partir del numero de serie, genera una página de certificación individualizada con todos los datos del ítem.


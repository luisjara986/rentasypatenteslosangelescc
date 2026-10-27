# Guía de Integración y Exportación a Google Sites

## Opción 1: Insertar directamente en Google Sites mediante Código Embed (Recomendada)
1. Abre tu sitio web en **Google Sites** (sites.google.com).
2. En el panel lateral derecho, selecciona **Insertar (Embed)** -> pestaña **Incorporar código (Embed Code)**.
3. Abre el archivo `index.html` incluido en este paquete con cualquier editor de texto (Bloc de notas, VS Code, etc.).
4. Copia **todo el contenido del archivo `index.html`** y pégalo en la ventana de código de Google Sites.
5. Haz clic en **Siguiente** y luego en **Insertar**.
6. Ajusta el ancho y alto del bloque rectangular en Google Sites para que abarque todo el ancho de la pantalla (Alto sugerido: `800px` o `100%`).

---

## Opción 2: Alojamiento en Google Cloud / GitHub Pages e Insertar vía URL (Para sincronización multidispositivo)
Si deseas que la aplicación mantenga datos sincronizados entre múltiples fiscalizadores mediante un servidor o servicio en la nube:
1. Sube los archivos (`index.html`, `manifest.json`) a un servidor web HTTPS, **GitHub Pages**, o **Firebase Hosting**.
2. Copia la URL pública generada (ejemplo: `https://tu-municipio.github.io/fiscalizacion/`).
3. En Google Sites, ve a **Insertar** -> **Mediante URL** y pega el enlace.
4. Google Sites mostrará la aplicación integrada de manera fluida y responsiva.

---

## Compatibilidad de la Aplicación en Google Sites:
- **Responsive:** Se adapta automáticamente al contenedor de Google Sites tanto en vista de Escritorio como en dispositivos Móviles (Android e iOS).
- **Acceso a Cámara:** Para el escáner de QR dentro del iframe de Google Sites, asegúrate de otorgar permisos de cámara en el navegador.
- **Impresión de Actas:** El módulo de generación de reportes e impresiones funciona de manera independiente dentro de la ventana del sitio.

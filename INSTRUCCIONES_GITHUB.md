# Guía para Publicar la Aplicación en GitHub Pages (github.com)

Esta guía explica paso a paso cómo subir la aplicación a tu cuenta de **GitHub** (`https://github.com/`) y publicarla de forma gratuita con dirección **HTTPS** (lista para usar en celulares, Google Sites o directamente desde cualquier navegador).

---

## Paso 1: Crear un nuevo repositorio en GitHub
1. Inicia sesión en tu cuenta de [GitHub](https://github.com/).
2. Haz clic en el botón verde **"New"** (Nuevo repositorio) o ingresa a [github.com/new](https://github.com/new).
3. En **Repository name**, asigna un nombre al proyecto, por ejemplo: `fiscalizacion-los-angeles` o `rentas-patentes`.
4. Asegúrate de seleccionar la opción **Public** (Público).
5. No es necesario marcar la casilla de agregar README ni .gitignore si vas a subir tus propios archivos.
6. Haz clic en **"Create repository"**.

---

## Paso 2: Cargar los archivos de la Aplicación a GitHub
Puedes subir los archivos directamente desde el navegador web de GitHub:

1. Dentro de tu nuevo repositorio en GitHub, haz clic en el botón **"uploading an existing file"** (o en **Add file** -> **Upload files**).
2. Abre la carpeta donde descomprimiste el archivo ZIP (`app_fiscalizacion_los_angeles_3.zip`).
3. Arrastra y suelta los siguientes archivos dentro de la ventana de GitHub:
   - `index.html`
   - `manifest.json`
   - `README.md`
4. En la parte inferior, escribe un mensaje de confirmación (ejemplo: `Primer commit de la aplicación de fiscalización`).
5. Haz clic en el botón verde **"Commit changes"**.

---

## Paso 3: Activar GitHub Pages (Publicación Web)
1. En tu repositorio de GitHub, dirígete a la pestaña **"Settings"** (Configuración) ubicada en el menú superior.
2. En la barra lateral izquierda, busca y selecciona la opción **"Pages"**.
3. En la sección **Build and deployment**:
   - En **Source**, asegúrate de que esté seleccionado **Deploy from a branch**.
   - En **Branch**, cambia `None` por **`main`** (o `master`) y deja la carpeta como `/ (root)`.
4. Haz clic en **"Save"** (Guardar).

---

## Paso 4: Obtener la URL de tu Aplicación
1. Espera entre 1 y 2 minutos mientras GitHub construye y publica el sitio.
2. Actualiza la página de **Pages** en Settings.
3. Verás un mensaje en color verde indicando: 
   > **"Your site is live at https://tu-usuario.github.io/fiscalizacion-los-angeles/"**
4. ¡Listo! Ya tienes una **URL pública, HTTPS y segura** que puedes compartir, abrir en teléfonos móviles o insertar dentro de Google Sites mediante el botón **Insertar -> Mediante URL**.

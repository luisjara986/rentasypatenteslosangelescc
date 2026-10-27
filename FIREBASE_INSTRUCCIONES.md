# Guía de Configuración e Integración con Firebase Firestore

Esta guía explica cómo conectar la aplicación de **Fiscalización de Comerciantes (Los Ángeles)** con **Google Firebase Firestore** para sincronización en tiempo real entre múltiples dispositivos móviles.

---

## Paso 1: Crear un Proyecto en Firebase
1. Ingrese a la consola de Firebase: [console.firebase.google.com](https://console.firebase.google.com/).
2. Haga clic en **"Agregar proyecto"** o **"Crear un proyecto"**.
3. Asigne un nombre al proyecto (ejemplo: `fiscalizacion-los-angeles`).
4. (Opcional) Desactive Google Analytics si no lo requiere y haga clic en **"Crear proyecto"**.

---

## Paso 2: Crear la Base de Datos Firestore
1. En el menú lateral izquierdo de la consola de Firebase, vaya a **Compilación (Build)** -> **Firestore Database**.
2. Haga clic en **"Crear base de datos"**.
3. Seleccione la ubicación geográfica del servidor (sugerido: `southamerica-west1` Santiago/Chile o `us-central`).
4. En Reglas de seguridad, seleccione **Iniciar en modo de prueba** (permite lectura/escritura inmediata).
5. Haga clic en **"Habilitar"**.

---

## Paso 3: Obtener las Credenciales Web (firebaseConfig)
1. En la consola de Firebase, haga clic en el ícono de engranaje (⚙️) junto a "Visión general del proyecto" -> **Configuración del proyecto**.
2. En la sección *Tus aplicaciones*, haga clic en el ícono **Web** (`</>`).
3. Ingrese un apodo para la app (ej: `app-fiscalizacion`) y haga clic en **"Registrar app"**.
4. Verá un bloque de código con el objeto `firebaseConfig`:
   ```javascript
   const firebaseConfig = {
     apiKey: "AIzaSy...",
     authDomain: "tu-proyecto.firebaseapp.com",
     projectId: "tu-proyecto",
     storageBucket: "tu-proyecto.appspot.com",
     messagingSenderId: "123456789",
     appId: "1:123456789:web:abcde..."
   };
   ```

---

## Paso 4: Conectar la Aplicación con Firebase
1. Abra la aplicación en el navegador o teléfono celular.
2. Inicie sesión con el usuario Administrador (`admin` / `admin123`).
3. Haga clic en el botón **Perfil** (arriba a la derecha) -> **Configuración Firebase / Nube**.
4. Copie los valores correspondientes (`apiKey`, `authDomain`, `projectId`, etc.) en los campos del formulario.
5. Haga clic en **"Conectar Firebase"**.
6. ¡Listo! La barra superior mostrará el estado **"Firebase Firestore Conectado"** en color ámbar. Toda creación o modificación de comerciante se sincronizará en tiempo real entre todos los teléfonos de los inspectores.

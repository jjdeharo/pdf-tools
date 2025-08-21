# PDF_Tools

<p align="center">
  <img src="./readme-files/PT destacado 540x357.png">
</p>

**PDF_Tools** es una extensión ligera y potente para **Google Chrome y Mozilla Firefox** que integra herramientas de manipulación de archivos PDF directamente en tu navegador. Une y divide documentos PDF con facilidad, sin necesidad de instalar software pesado ni depender de servicios en línea.

Esta extensión nace de la necesidad de tener a mano herramientas rápidas y eficientes para las tareas más comunes con archivos PDF. En lugar de abrir aplicaciones de escritorio o subir archivos sensibles a la web, PDF_Tools procesa todo localmente en tu navegador, garantizando velocidad y privacidad.

## ✨ Características Principales

<p align="center">
  <img src="./readme-files/Capturas.gif">
</p>

* **Panel lateral moderno**: Accede a todas las herramientas desde un cómodo panel lateral en ambos navegadores
  - **Chrome**: Side Panel API (Manifest v3)
  - **Firefox**: Sidebar Action API (Manifest v2)
* **Unir PDF**: Combina múltiples archivos PDF en un único documento.
    * **Arrastrar y soltar**: Añade archivos fácilmente arrastrándolos a la interfaz.
    * **Reordenación visual**: Cambia el orden de los archivos antes de unirlos simplemente arrastrándolos en la lista.
* **Dividir PDF**: Extrae páginas o rangos de un PDF.
    * **Extracción flexible**: Define rangos (`1-5, 8, 10-`) o extrae páginas individuales.
    * **División completa**: Genera un PDF por cada página del documento original con un solo clic.
* **Compresión en ZIP**: Descarga todos los archivos generados en la división dentro de un único archivo `.zip` para mayor comodidad.
* **Multi-idioma**: Interfaz disponible en inglés, español y catalán, con un selector para cambiar de idioma manualmente o usar el del navegador.
* **Procesamiento local**: Todos los archivos se procesan en tu máquina. Ningún documento sale de tu navegador, garantizando el 100% de privacidad.

## ⚙️ Descripción Técnica

PDF_Tools está construido con tecnologías web estándar y es compatible con múltiples navegadores.

* **Compatibilidad cross-browser**: 
  - **Chrome**: Manifest V3, Service Worker, Side Panel API
  - **Firefox**: Manifest V2, Background Script, Sidebar Action API
* **JavaScript (vanilla JS)**: Toda la lógica de la aplicación está escrita en JavaScript puro, sin dependencias de frameworks, lo que asegura un rendimiento óptimo y un tamaño de paquete reducido.
* **APIs de extensiones**: Utiliza las APIs estándar de extensiones web para funcionalidades como internacionalización y almacenamiento local.
* **Procesamiento local**: Todo el procesamiento de PDFs se realiza en el navegador usando PDF-lib.

## 🚀 Instalación

### Chrome

#### Opción 1: Desde la Chrome Web Store (recomendado)

1.  Visita la [página de PDF_Tools](https://chromewebstore.google.com/detail/amfbkjdnaalliclaenmafeohionnkmoa) en la Chrome Web Store.
2.  Haz clic en "Añadir a Chrome".
3.  ¡Listo! Ya puedes usar la extensión.

#### Opción 2: Desde el código fuente

1.  Descarga y descomprime o clona este repositorio:
    ```bash
    git clone https://github.com/pfelipm/pdf-tools
    cd pdf-tools
    ```
2.  Ejecuta el script de construcción:
    ```bash
    ./build.sh
    ```
3.  Abre Google Chrome y ve a `chrome://extensions/`.
4.  Activa el **"Modo de desarrollador"** en la esquina superior derecha.
5.  Haz clic en **"Cargar descomprimida"**.
6.  Selecciona la carpeta `build/chrome/`.
7.  ¡Listo! El icono aparecerá en tu barra de extensiones.

### Firefox

#### Instalación desde código fuente

1.  Ejecuta el script de construcción (si no lo has hecho ya):
    ```bash
    ./build.sh
    ```
2.  Abre Firefox y ve a `about:debugging`.
3.  Haz clic en **"Este Firefox"**.
4.  Haz clic en **"Cargar complemento temporal"**.
5.  Selecciona el archivo `build/firefox/manifest.json`.
6.  ¡Listo! El icono aparecerá en tu barra de herramientas.

**Acceso al panel lateral en Firefox:**
- El sidebar se abre automáticamente tras la instalación
- Usa el icono de la extensión para abrir/cerrar el sidebar
- También accesible desde: `Ver > Barra lateral > PDF Tools`
- Atajo de teclado: `Ctrl+Shift+Y` (puede variar según configuración)

> **Nota**: En Firefox, las extensiones temporales se desinstalan al cerrar el navegador. Para una instalación permanente, la extensión debe estar firmada por Mozilla.

Esta opción puede facilitar el despliegue de la extensión en un aula en la que los ordenadores estén configurados para navegar de manera predeterminada en modo incógnito. En este caso, tras instalarla en el navegador de cada equipo, marca la opción **"Permitir en incógnito"** en los ajustes de la extensión para que permanezca activa en este modo.

## 💙 Créditos

Este proyecto ha sido creado y es mantenido por **[Pablo Felip](https://www.linkedin.com/in/pfelipm/)**.

Este proyecto no sería posible sin el excelente trabajo de la comunidad de código abierto. Las siguientes bibliotecas se utilizan en esta extensión:

* **[pdf-lib.js](https://github.com/Hopding/pdf-lib)**: Para la creación y manipulación de documentos PDF en JavaScript.
* **[Sortable.js](https://github.com/SortableJS/Sortable)**: Para la reordenación mediante arrastrar y soltar en la lista de archivos.
* **[JSZip](https://github.com/Stuk/jszip)**: Para la creación de archivos `.zip` en el navegador.

## ✊ Licencia

Este proyecto se distribuye bajo los términos del archivo [LICENSE](/LICENSE).
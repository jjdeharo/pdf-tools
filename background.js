// Background script para Firefox (Manifest v2)
// Firefox adaptation of PDF_Tools by Juan José de Haro (https://bilateria.org)
// Original work by Pablo Felip (https://www.linkedin.com/in/pfelipm/)
// Licensed under GPL v3 - Reemplaza service-worker.js para compatibilidad con Firefox

// Manejo del sidebar en Firefox
// El sidebar se abre automáticamente al instalar la extensión (comportamiento por defecto de Firefox)
// Los usuarios pueden abrirlo/cerrarlo desde el menú Ver > Barra lateral o usando el icono

// Listener para cuando se hace clic en el browser action
// Esto simplemente abre el sidebar (compatible con Firefox 58+)
browser.browserAction.onClicked.addListener(async (tab) => {
    try {
        await browser.sidebarAction.open();
    } catch (error) {
        console.error('Error opening sidebar:', error);
    }
});

console.log('PDF Tools Firefox background script loaded');
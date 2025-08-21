// Background script para Firefox (Manifest v2)
// Reemplaza service-worker.js para compatibilidad con Firefox

// Manejo del sidebar en Firefox
// El sidebar se abre automáticamente al instalar la extensión (comportamiento por defecto de Firefox)
// Los usuarios pueden abrirlo/cerrarlo desde el menú Ver > Barra lateral o usando el icono

// Listener para cuando se hace clic en el browser action
// Esto permite toggle del sidebar programáticamente
browser.browserAction.onClicked.addListener(async (tab) => {
    try {
        // Verificar si el sidebar está abierto
        const isOpen = await browser.sidebarAction.isOpen({ windowId: tab.windowId });
        
        if (isOpen) {
            await browser.sidebarAction.close();
        } else {
            await browser.sidebarAction.open();
        }
    } catch (error) {
        console.error('Error toggling sidebar:', error);
    }
});

console.log('PDF Tools Firefox background script loaded');
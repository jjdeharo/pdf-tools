#!/bin/bash

# Script para construir la extensión para Chrome y Firefox

echo "🔧 Construyendo PDF Tools para Chrome y Firefox..."

# Crear directorios de build
mkdir -p build/chrome build/firefox

# Función para copiar archivos comunes
copy_common_files() {
    local target_dir=$1
    
    # Copiar archivos comunes
    cp -r _locales/ $target_dir/
    cp -r images/ $target_dir/
    cp -r libs/ $target_dir/
    cp -r readme-files/ $target_dir/
    cp panel.html $target_dir/
    cp panel.js $target_dir/
    cp style.css $target_dir/
    cp LICENSE $target_dir/
    cp README.md $target_dir/
}

# Build para Chrome (Manifest v3)
echo "📦 Construyendo para Chrome..."
copy_common_files build/chrome
cp manifest.json build/chrome/
cp service-worker.js build/chrome/

# Build para Firefox (Manifest v2)
echo "🦊 Construyendo para Firefox..."
copy_common_files build/firefox
cp manifest-firefox.json build/firefox/manifest.json
cp background.js build/firefox/

echo "✅ ¡Construcción completada!"
echo "   📁 Chrome: build/chrome/"
echo "   📁 Firefox: build/firefox/"
echo ""
echo "Para instalar en Chrome:"
echo "   1. Abre chrome://extensions/"
echo "   2. Activa 'Modo de desarrollador'"
echo "   3. Haz clic en 'Cargar extensión sin empaquetar'"
echo "   4. Selecciona la carpeta build/chrome/"
echo ""
echo "Para instalar en Firefox:"
echo "   1. Abre about:debugging"
echo "   2. Haz clic en 'Este Firefox'"
echo "   3. Haz clic en 'Cargar complemento temporal'"
echo "   4. Selecciona el archivo build/firefox/manifest.json"
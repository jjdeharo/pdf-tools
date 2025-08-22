#!/bin/bash

# Script para construir PDF Tools for Firefox

echo "🦊 Construyendo PDF Tools for Firefox..."

# Crear directorio de build
mkdir -p build

# Copiar archivos para Firefox
echo "📦 Copiando archivos..."
cp -r _locales/ build/
cp -r images/ build/
cp -r libs/ build/
cp panel.html build/
cp panel.js build/
cp style.css build/
cp background.js build/
cp manifest.json build/
cp LICENSE build/
cp README.md build/

echo "✅ ¡Construcción completada!"
echo "   📁 Salida: build/"
echo ""
echo "Para instalar en Firefox:"
echo "   1. Abre about:debugging"
echo "   2. Haz clic en 'Este Firefox'"
echo "   3. Haz clic en 'Cargar complemento temporal'"
echo "   4. Selecciona el archivo build/manifest.json"
echo ""
echo "Para crear ZIP para Mozilla Add-ons:"
echo "   cd build && zip -r ../pdf-tools-firefox.zip . && cd .."

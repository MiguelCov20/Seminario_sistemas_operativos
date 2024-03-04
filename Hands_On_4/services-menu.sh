listar_contenido() {
	read -p "Ingrese la ruta del archivo o carpeta: " ruta
	ls "$ruta"
}

crear_archivo() {
	read -p "Ingrese el texto a escribir en el archvio: " texto
	echo "$texto" > archivo_nuevo.txt
	echo "Archvio creado"
}

comparar_archivos() {
	read -p "Ingrese la ruta del primer archivo: " arch1
	read -p "Ingrese la ruta del segundo archivo: " arch2
	diff "$arch1" "$arch2"
}

uso_awk() {
	read -p "Ingrese la ruta del archivo para aplicar awk: " arch
	echo "Ejemplo de comando awk: "
	echo "Buscar y mostar la palabra hello en el archvio: "
	awk '/hello/ {print}' "$arch"
}

uso_grep() {
	read -p "Ingrese la ruta del archivo para aplicar grep: " arch
	echo "Ejemplo de comando grep: "
	echo "Buscar y mostrar la palabra goodbay en el archivo: "
	grep "goodbay" "$arch"
}

while true; do
	echo "============ MENU =============="
	echo "1. Listar contenido de un archivo o carpeta"
	echo "2. Crear un archivo de texto"
	echo "3. Comparar dos archivos"
	echo "4. Mostrar el uso de comando awk"
	echo "5. Mostrar el uso del comando grep"
	echo "6. Salir"
	echo "================================"
	read -p "Selecciona una opcion: " option

	case $option in
		1) listar_contenido ;;
		2) crear_archivo ;;
		3) comparar_archivos ;;
		4) uso_awk ;;
		5) uso_grep ;;
		6) echo "Saliendo..."; exit ;;
		*) echo "Opcion no valida, vuelve a intentar" ;;
	esac
done


echo "=================="
read -p "Ingrese nombre: " br

cont=0

while [ $cont -le 5 ];do

echo "========================="
echo "Hola, $br. Elije una opcion"
echo "==========================="
echo "1) Comprimir archivo"
echo "2) Descomprimir archivo"
echo "3) Salir del sistema"
echo "4) Crear archivo"
echo "==========================="
read -p "opcion: " opc

case $opc in

        1) read -p " Ingrese nombre de archivo a comprimir sin el TAR.GZ: " comp
            if [ -f "$comp" ]; then 
             sudo tar -czvf "$comp.tar.gz" "$comp"
             echo "Archivo '$comp.tar.gz' comprimido exitosamente "
            else
             echo " archivo '$comp' no encontrado "
            fi
            ;;
         2) read -p " Inrgese nombre de archivo a descomprimir: " desc
            if [ -f "$desc.tar.gz" ]; then
	     sudo tar -xzvf "$desc.tar.gz"
             echo "Archivo '$desc.tar.gz' descomprimido exitosamente'"
            else
	     echo "Archo '$desc' no encontrado"
    	    fi
	    ;;
         3)
            echo " Saliendo "
            break
            ;;
	 4) read -p "Ingrese nombre para archivo: " arc
	    sudo nano "arc"
	    echo "Archivo '$arc' creado "
	    ;;
	 *)
	    echo " Opcion no validad "
	    ;;
     esac
done

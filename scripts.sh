
echo "=================="
echo "Ingrese nombre: "
read nombre

cont=0

while [ $cont -le 5];do

echo "========================="
echo "Hola, $nombre. Elije una opcion"
echo "==========================="
echo "1) Comprimir archivo"
echo "2) Descomprimir archivo"
echo "==========================="
read "opcion: "

case $opcion in
        1) read -p " Ingrese nombre de archivo a comprimir sin el TAR.GZ" comp
                        if [ -f "$comp" ]; then 
                        sudo tar -czvf "$comp.tar.gz" "$comp"
                        echo " Archivo '$comp.tar.gz' comprimido exitosamente "
                        else
                        echo " archivo '$comp' no encontrado "
                        fi
                        ;;
                2) read -p " Inrgese nombre de archivo a descomprimir " desc
                   sudo tar -xzvf "$desc.tar.gz"
                   echo " "Archivo '$desc.tar.gz descomprimido exitosamente'
                   ;;
                3) 
                  echo " Saliendo "
                  break
                ;;

        esac
done

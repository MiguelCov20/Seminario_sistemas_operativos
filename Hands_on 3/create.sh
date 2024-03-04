echo "Hola Mundo" > mytext.txt
cat mytext.txt
mkdir backup
mv mytext.txt backup/
echo "Contenido del directorio backup:"
ls backup
rm backup/mytext.txt
echo "mytext.txt eliminado de backup"
rmdir backup
echo "Backup eliminado"

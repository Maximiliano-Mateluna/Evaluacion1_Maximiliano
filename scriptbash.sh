echo ""
echo "=== MENÚ DE SEGURIDAD ==="
echo "1) Ver intentos de acceso fallidos"
echo "2) Listar usuarios activos"
echo "3) Mostrar puertos abiertos"
echo "4) Salir"
echo "Seleccione una opción (1-4): "
echo ""

read opcion

case $opcion in
    1)echo "Intentos de acceso fallidos:"
        cat /var/log/auth.log;;
    2)echo "Lista usuarios activos:"
        w;;
    3)echo "Puertos abiertos:"
        ss -tulnp;;
    *)echo "Adios..."
esac

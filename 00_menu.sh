title="Backup del treball"
prompt="Selecciona una opció:"
options=("Cole → Pendrive" "Pendrive → Server" "Server → Pendrive" "Pendrive → Cole" "Apache → Carpeta" "Carpeta → Apache")

echo "$title"
PS3="$prompt "
select opt in "${options[@]}" "Ix"; do 

    case "$REPLY" in

    1 ) ./01_colepen.sh;;
    2 ) ./02_penserver.sh;;
    3 ) ./03_serverpen.sh;;
    4 ) ./04_pencole.sh;;
    5 ) ./05_apacheserver.sh;;
    6 ) ./06_serverapache.sh;;

    $(( ${#options[@]}+1 )) ) echo -e "\e[1;33mAdéu!\e[0m"; break;;
    *) echo "Invalid option. Try another one.";continue;;

    esac

done


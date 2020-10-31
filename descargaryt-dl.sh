format="wav"
while [[ "$#" -gt 0 ]]; do
    case $1 in
        -f|--audio-format) format="$2"; shift ;;
        # -u|--uglify) uglify=1 ;;
        -u| --username) username="$2" shift;;
        -p| --password) pasword="$2" shift;;
        *) url=$1;;
    esac
    shift
done

if [ -z $username ]; then
# echo "youtube-dl -i -x --audio-format $format $url"
youtube-dl -i -x --audio-format $format $url
else
# echo "youtube-dl -i -x --audio-format $format -u $username -p $pasword $url"
youtube-dl -i -x --audio-format $format --username $username --password $pasword $url
fi



# if [ -z "$1" ]; then
#     echo "Ingrese ruta de youtube o YT Music"
# else
#    if [ -z "$2" ]; then
#         youtube-dl -i -x --audio-format wav $1
#     else
#         youtube-dl -i -x --audio-format $2 $1
#     fi
# fi


# youtube-dl -i -x --audio-format $2 $1
# case $INPUT_STRING in
# 	hello)
# 		echo "Hello yourself!"
# 		;;
# 	bye)
# 		echo "See you again!"
# 		break
# 		;;
# 	*)
# 		echo "Sorry, I don't understand"
# 		;;
#   esac
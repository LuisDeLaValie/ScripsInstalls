echo "clonando https://github.com/flutter/flutter.git"
git clone https://github.com/flutter/flutter.git -b stable --depth 1
export PATH="$PATH:`pwd`/flutter/bin"
echo "descargar binarios"
flutter precache
flutter doctor

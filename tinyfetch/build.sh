set -e # fail if error occurs

tar xvfs tinyfetch-0.2.tar.gz -C $src
cd $src/tinyfetch-0.2
make

mkdir $out/usr/bin/
install -Dm755 main $out/usr/bin/tinyfetch

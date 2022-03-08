set -e

dir=./wwws/private
name=capstone
path="$dir/$name"

./scripts/build.sh
ssh $1 sh -c "cd $dir && [ -d $name ] && rm -ri $name"
rsync -auP "./output:$1/$path"

#!/bin/bash
# This is just the init to run with 'init' arg to kickstart
# you functions. It will create .bash_functions file in your home
# It will be a little script sourcing all your function in this folder
# and it will be itself called inside your .bashrc after this init.

[[ $1 == 'init' ]] || (
    echo '[.bunctionsh] This script can be called just with init arg'
  )

pushd `dirname $0` > /dev/null
abs_path=`pwd`
popd > /dev/null

[[ -d "${abs_path}" ]] || (
    echo '[.bunctionsh] Your functions folder does not exists.'
    echo 'You probably have a corrupted/old script...sorry'
  )

if [[ -d ${abs_path} && $1 == 'init' ]]; then
  cat <<EOT > ~/.bunctionsh
#!/bin/bash
shopt -s extglob
for i in \`ls ${abs_path}/lib\`; do
. ${abs_path}/lib/\$i
done
for i in \`ls ${abs_path}/helpers/*!(_off)\`; do
. \$i
done
EOT

grep -q .bunctionsh ~/.bashrc || (
  cat <<EOT >> ~/.bashrc

# Personal functions definition
if [[ -f ~/.bunctionsh ]]; then
  source ~/.bunctionsh
fi

EOT
  )
fi

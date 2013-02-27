#!/bin/bash
# This is just the init to run with 'init' arg to kickstart
# you functions. It will create .bash_functions file in your home
# It will be a little script sourcing all your function in this folder
# and it will be itself called inside your .bashrc after this init.

[[ $1 == 'init' ]] || (
    echo '[.bash_functions] This script can be called just with init arg'
  )

pushd `dirname $0` > /dev/null
abs_path=`pwd`
popd > /dev/null

[[ -d "${abs_path}" ]] || (
    echo '[.bash_functions] Your functions folder does not exists.'
    echo 'You probably have a corrupted/old script...sorry'
  )

if [[ -d ${abs_path} && $1 == 'init' ]]; then
  cat <<EOT > ~/.bash_functions
#!/bin/bash
for i in \`find $abs_path ! -name $(basename $0) -type f\`; do
. \$i
done
EOT

grep -q .bash_functions ~/.bashrc || (
  cat <<EOT >> ~/.bashrc

# Personal functions definition
if [ -f ~/.bash_functions ]; then
  bash ~/.bash_functions
fi

EOT
  )
fi

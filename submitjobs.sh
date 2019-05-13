#!/bin/bash

cd /tmp

cat << 'EOF' > /tmp/myscript.sh
#!/bin/bash
sleep $(( ( RANDOM % 45 ) + 16 ))s
EOF
chmod 0555 /tmp/myscript.sh

for user in kara tim bob mary rae david joe alice; do
    sudo -u $user -- sbatch /tmp/myscript.sh
done

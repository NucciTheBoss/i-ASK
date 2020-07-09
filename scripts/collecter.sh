#!/bin/bash
# A simple script that collects info on a users home directory
# Gather .bashrc, .bash_history, .bash_profile, .bash_aliases, directory size, etc.

cd ${HOME}
# make a ${TEMP} dir to gather the files
export TEMP=${USER}_info
mkdir ${TEMP}

# Collect .bashrc
if [ -f ${HOME}/.bashrc ]; then
    cat .bashrc > ${TEMP}/${USER}_bashrc.txt
fi

# Collect .bash_history
if [ -f ${HOME}/.bash_history ]; then
    cat .bash_history > ${TEMP}/${USER}_bash_history.txt
fi

# Collect .bash_profile
if [ -f ${HOME}/.bash_profile ]; then
    cat .bash_profile > ${TEMP}/${USER}_bash_profile.txt
fi

# Collect .bash_aliases
if [ -f ${HOME}/.bash_aliases ]; then
    cat .bash_aliases > ${TEMP}/${USER}_bash_aliases.txt
fi

# Gather directory size
echo "ls -lha" >> ${TEMP}/dir_size.txt
ls -lha >> ${TEMP}/dir_size.txt
echo -e "\n" >> ${TEMP}/dir_size.txt
echo "du -h --max-depth=1" >> ${TEMP}/dir_size.txt
du -h --max-depth=1 >> ${TEMP}/dir_size.txt

# Create tar archive from ${TEMP}
tar -czvf ${TEMP}.tar.gz ${TEMP}

# Clean up
rm -rf ${TEMP}
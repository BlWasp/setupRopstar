#!/bin/bash
# Update libc-database libs folder from db folder with symlinks

LIBCDATABASE_DIR=~/tools/libc-database/
LINK_NAME=libc.so.6

for libname in $(ls ${LIBCDATABASE_DIR}/db/*.so); do
	if [[ ! -d ${LIBCDATABASE_DIR}/libs/$(basename "${libname%.*}") ]];then
		mkdir ${LIBCDATABASE_DIR}/libs/$(basename "${libname%.*}")
	fi
    if [[ ! -L ${LIBCDATABASE_DIR}/libs/$(basename "${libname%.*}")/${LINK_NAME} || ! -f ${LIBCDATABASE_DIR}/libs/$(basename "${libname%.*}")/${LINK_NAME} ]]; then
        ln -s $(realpath ${libname}) ${LIBCDATABASE_DIR}/libs/$(basename "${libname%.*}")/${LINK_NAME}
    fi  
done

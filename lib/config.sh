#!/bin/bash


## smartITSM Demo System
## Copyright (C) 2012 synetics GmbH <http://www.smartitsm.org/>
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU Affero General Public License as
## published by the Free Software Foundation, either version 3 of the
## License, or (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU Affero General Public License for more details.
##
## You should have received a copy of the GNU Affero General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.


##
## Default Configuration
## DO NOT EDIT THIS FILE! CREATE AND EDIT LOCAL CONFIGURATION FILE UNDER etc/config.sh INSTEAD!
##


##
## Common Settings and Credentials
##

## Hostname:
if [ -z "${HOST+1}" ]; then
    HOST="demo.smartitsm.org"
fi

## MySQL database administrator:
if [ -z "${MYSQL_DBA_USERNAME+1}" ]; then
    MYSQL_DBA_USERNAME="root"
fi

## MySQL database administrator's password:
if [ -z "${MYSQL_DBA_PASSWORD+1}" ]; then
    MYSQL_DBA_PASSWORD="root"
fi

## LDAP admin's password:
if [ -z "${LDAP_ADMIN_USERNAME+1}" ]; then
    LDAP_ADMIN_USERNAME="cn=admin,dc=demo,dc=smartitsm,dc=org"
fi

## LDAP admin's password:
if [ -z "${LDAP_ADMIN_PASSWORD+1}" ]; then
    LDAP_ADMIN_PASSWORD="admin"
fi

## Icinga admin user:
if [ -z "${ICINGA_ADMIN_USERNAME+1}" ]; then
    ICINGA_ADMIN_USERNAME="icingaadmin"
fi

## Icinga admin user's password:
if [ -z "${ICINGA_ADMIN_PASSWORD+1}" ]; then
    ICINGA_ADMIN_PASSWORD="admin"
fi

## OCS admin user
if [ -z "${OCS_ADMIN_USERNAME+1}" ]; then
    OCS_ADMIN_USERNAME="admin"
fi

## OCS admin user's password
if [ -z "${OCS_ADMIN_PASSWORD+1}" ]; then
    OCS_ADMIN_PASSWORD="admin"
fi

## OCS database name
if [ -z "${OCS_DB_NAME+1}" ]; then
    OCS_DB_NAME="ocsweb"
fi

## OCS database user
if [ -z "${OCS_DB_USERNAME+1}" ]; then
    OCS_DB_USERNAME="ocs"
fi

## OCS database user's password
if [ -z "${OCS_DB_PASSWORD+1}" ]; then
    OCS_DB_PASSWORD="ocs"
fi

## OTRS Help Desk admin user
if [ -z "${OTRS_ADMIN_USERNAME+1}" ]; then
    OTRS_ADMIN_USERNAME="root@localhost"
fi

## OTRS Help Desk admin user's password
if [ -z "${OTRS_ADMIN_PASSWORD+1}" ]; then
    OTRS_ADMIN_PASSWORD="root"
fi

## OTRS Help Desk database name
if [ -z "${OTRS_DB_NAME+1}" ]; then
    OTRS_DB_NAME="otrs"
fi

## OTRS Help Desk database user
if [ -z "${OTRS_DB_USERNAME+1}" ]; then
    OTRS_DB_USERNAME="otrs"
fi

## OTRS Help Desk database user's password
if [ -z "${OTRS_DB_PASSWORD+1}" ]; then
    OTRS_DB_PASSWORD="otrs"
fi

## RT admin user:
if [ -z "${RT_ADMIN_USERNAME+1}" ]; then
    RT_ADMIN_USERNAME="root"
fi

## MySQL admin user's password:
if [ -z "${RT_ADMIN_PASSWORD+1}" ]; then
    RT_ADMIN_PASSWORD="password"
fi

## RT DB user:
if [ -z "${RT_DB_USERNAME+1}" ]; then
    RT_DB_USERNAME="rt_user"
fi

## MySQL DB user's password:
if [ -z "${RT_DB_PASSWORD+1}" ]; then
    RT_DB_PASSWORD="rt_pass"
fi


##
## About this tool
##


## Name
PROJECT_NAME="smartitsm"
## Short description
PROJECT_SHORT_DESC="smartITSM Demo System"
## Author
PROJECT_AUTHOR="Benjamin Heisig <bheisig@i-doit.org>"
## Copyright
PROJECT_COPYRIGHT="synetics GmbH <http://www.i-doit.com/>"
## Project website
PROJECT_WEBSITE="http://www.smartitsm.org/demo"
## Version
PROJECT_VERSION="0.1 pre-alpha"


##
## Substantials
##

BASE_DIR=`pwd`
BASE_NAME=`basename $0`


##
## Paths
##

## Path to binaries:
if [ -z "${BIN_DIR+1}" ]; then
    BIN_DIR="${BASE_DIR}/bin"
fi

## Path to configuration files:
if [ -z "${CONFIG_DIR+1}" ]; then
    CONFIG_DIR="${BASE_DIR}/conf.d"
fi

## Path to etc files:
if [ -z "${ETC_DIR+1}" ]; then
    ETC_DIR="${BASE_DIR}/etc"
fi

## Path to libraries:
if [ -z "${LIB_DIR+1}" ]; then
    LIB_DIR="${BASE_DIR}/lib"
fi

## Path to www files:
if [ -z "${WWW_DIR+1}" ]; then
    WWW_DIR="${BASE_DIR}/www"
fi

## Installation directory:
if [ -z "${SMARTITSM_ROOT_DIR+1}" ]; then
    SMARTITSM_ROOT_DIR="/opt/smartitsm"
fi

## Path to temporary files:
if [ -z "${TMP_DIR+1}" ]; then
    TMP_DIR="${SMARTITSM_ROOT_DIR}/build"
fi

## Logo directory:
if [ -z "${LOGO_DIR+1}" ]; then
    LOGO_DIR="${SMARTITSM_ROOT_DIR}/www/logos"
fi

## Path to www files:
if [ -z "${WWW_MODULE_DIR+1}" ]; then
    WWW_MODULE_DIR="${SMARTITSM_ROOT_DIR}/www/conf.d"
fi


##
## Logging and output
##

## Log events:
LOG_NONE=0
LOG_FATAL=1
LOG_ERROR=2
LOG_WARNING=4
LOG_NOTICE=8
LOG_INFO=16
LOG_DEBUG=32
LOG_ALL=63

## Main log file
if [ -z "${LOG_FILE+1}" ]; then
    LOG_FILE="${BASE_DIR}/${PROJECT_NAME}.log"
fi

## Log level:
if [ -z "${LOG_LEVEL+1}" ]; then
    LOG_LEVEL=$LOG_NONE
fi

## Verbose level:
if [ -z "${VERBOSITY+1}" ]; then
    VERBOSITY=$(($LOG_FATAL | $LOG_ERROR))
fi


##
## Default runtime settings
##

## Run installation:
if [ -z "${RUN_INSTALL+1}" ]; then
    RUN_INSTALL=0
fi

## Run homepage installation:
if [ -z "${RUN_WWW_INSTALL+1}" ]; then
    RUN_WWW_INSTALL=0
fi

## Module selection:
if [ -z "${MODULE_SELECTION+1}" ]; then
    MODULE_SELECTION="all"
fi

## Human-readable list of available modules:
AVAILABLE_MODULES=""


##
## Output
##

## Print usage:
##   0 disabled [default]
##   1 enabled
PRINT_USAGE=0
## Print some information about this script:
##   0 disabled [default]
##   1 enabled
PRINT_VERSION=0
## Print license:
##   0 disabled [default]
##   1 enabled
PRINT_LICENSE=0


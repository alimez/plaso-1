#!/bin/bash
#
# Script to set up Travis-CI test VM.
#
# This file is generated by l2tdevtools update-dependencies.py any dependency
# related changes should be made in dependencies.ini.

<<<<<<< HEAD
L2TBINARIES_DEPENDENCIES="PyYAML XlsxWriter artifacts backports.lzma bencode biplist bs4 certifi chardet dateutil dfdatetime dfvfs dfwinreg dtfabric elasticsearch-py future idna libbde libesedb libevt libevtx libewf libfsapfs libfsntfs libfvde libfwnt libfwsi liblnk libmsiecf libolecf libqcow libregf libscca libsigscan libsmdev libsmraw libvhdi libvmdk libvshadow libvslvm pefile psutil pycrypto pyparsing pysqlite python-lz4 pytsk3 pytz pyzmq requests six urllib3 yara-python";
=======
L2TBINARIES_DEPENDENCIES="PyYAML XlsxWriter artifacts backports.lzma beautifulsoup4 bencode biplist certifi chardet dateutil dfdatetime dfvfs dfwinreg dtfabric elasticsearch-py future idna libbde libesedb libevt libevtx libewf libfsapfs libfsntfs libfvde libfwnt libfwsi liblnk libmsiecf libolecf libqcow libregf libscca libsigscan libsmdev libsmraw libvhdi libvmdk libvshadow libvslvm pefile psutil pycrypto pyparsing pysqlite python-lz4 pytsk3 pytz pyzmq requests six urllib3 yara-python";
>>>>>>> bd228e50f7a1e53182a310daa1733cd720bcee26

L2TBINARIES_TEST_DEPENDENCIES="funcsigs mock pbr six";

DPKG_PYTHON2_DEPENDENCIES="libbde-python libesedb-python libevt-python libevtx-python libewf-python libfsapfs-python libfsntfs-python libfvde-python libfwnt-python libfwsi-python liblnk-python libmsiecf-python libolecf-python libqcow-python libregf-python libscca-python libsigscan-python libsmdev-python libsmraw-python libvhdi-python libvmdk-python libvshadow-python libvslvm-python python-artifacts python-backports.lzma python-bencode python-biplist python-bs4 python-certifi python-chardet python-crypto python-dateutil python-dfdatetime python-dfvfs python-dfwinreg python-dtfabric python-elasticsearch python-future python-idna python-lz4 python-pefile python-psutil python-pyparsing python-pysqlite2 python-pytsk3 python-requests python-six python-tz python-urllib3 python-xlsxwriter python-yaml python-yara python-zmq";

DPKG_PYTHON2_TEST_DEPENDENCIES="python-coverage python-funcsigs python-mock python-pbr";

DPKG_PYTHON3_DEPENDENCIES="libbde-python3 libesedb-python3 libevt-python3 libevtx-python3 libewf-python3 libfsapfs-python3 libfsntfs-python3 libfvde-python3 libfwnt-python3 libfwsi-python3 liblnk-python3 libmsiecf-python3 libolecf-python3 libqcow-python3 libregf-python3 libscca-python3 libsigscan-python3 libsmdev-python3 libsmraw-python3 libvhdi-python3 libvmdk-python3 libvshadow-python3 libvslvm-python3 python3-artifacts python3-bencode python3-biplist python3-bs4 python3-certifi python3-chardet python3-crypto python3-dateutil python3-dfdatetime python3-dfvfs python3-dfwinreg python3-dtfabric python3-elasticsearch python3-future python3-idna python3-lz4 python3-pefile python3-psutil python3-pyparsing python3-pytsk3 python3-requests python3-six python3-tz python3-urllib3 python3-xlsxwriter python3-yaml python3-yara python3-zmq";

DPKG_PYTHON3_TEST_DEPENDENCIES="python3-mock python3-pbr python3-setuptools";

RPM_PYTHON2_DEPENDENCIES="libbde-python2 libesedb-python2 libevt-python2 libevtx-python2 libewf-python2 libfsapfs-python2 libfsntfs-python2 libfvde-python2 libfwnt-python2 libfwsi-python2 liblnk-python2 libmsiecf-python2 libolecf-python2 libqcow-python2 libregf-python2 libscca-python2 libsigscan-python2 libsmdev-python2 libsmraw-python2 libvhdi-python2 libvmdk-python2 libvshadow-python2 libvslvm-python2 python2-XlsxWriter python2-artifacts python2-backports-lzma python2-beautifulsoup4 python2-bencode python2-biplist python2-certifi python2-chardet python2-crypto python2-dateutil python2-dfdatetime python2-dfvfs python2-dfwinreg python2-dtfabric python2-elasticsearch python2-future python2-idna python2-lz4 python2-pefile python2-psutil python2-pyparsing python2-pysqlite python2-pytsk3 python2-pytz python2-pyyaml python2-requests python2-six python2-urllib3 python2-yara python2-zmq";
<<<<<<< HEAD

=======
>>>>>>> bd228e50f7a1e53182a310daa1733cd720bcee26

RPM_PYTHON2_TEST_DEPENDENCIES="python2-funcsigs python2-mock python2-pbr";

RPM_PYTHON3_DEPENDENCIES="libbde-python3 libesedb-python3 libevt-python3 libevtx-python3 libewf-python3 libfsapfs-python3 libfsntfs-python3 libfvde-python3 libfwnt-python3 libfwsi-python3 liblnk-python3 libmsiecf-python3 libolecf-python3 libqcow-python3 libregf-python3 libscca-python3 libsigscan-python3 libsmdev-python3 libsmraw-python3 libvhdi-python3 libvmdk-python3 libvshadow-python3 libvslvm-python3 python3-XlsxWriter python3-artifacts python3-beautifulsoup4 python3-bencode python3-biplist python3-certifi python3-chardet python3-crypto python3-dateutil python3-dfdatetime python3-dfvfs python3-dfwinreg python3-dtfabric python3-elasticsearch python3-future python3-idna python3-lz4 python3-pefile python3-psutil python3-pyparsing python3-pytsk3 python3-pytz python3-pyyaml python3-requests python3-six python3-urllib3 python3-yara python3-zmq";

RPM_PYTHON3_TEST_DEPENDENCIES="python3-mock python3-pbr";

# Exit on error.
set -e;

if test ${TRAVIS_OS_NAME} = "osx";
then
	git clone https://github.com/log2timeline/l2tbinaries.git -b dev;

	mv l2tbinaries ../;

	for PACKAGE in ${L2TBINARIES_DEPENDENCIES};
	do
		echo "Installing: ${PACKAGE}";
		sudo /usr/bin/hdiutil attach ../l2tbinaries/macos/${PACKAGE}-*.dmg;
		sudo /usr/sbin/installer -target / -pkg /Volumes/${PACKAGE}-*.pkg/${PACKAGE}-*.pkg;
		sudo /usr/bin/hdiutil detach /Volumes/${PACKAGE}-*.pkg
	done

	for PACKAGE in ${L2TBINARIES_TEST_DEPENDENCIES};
	do
		echo "Installing: ${PACKAGE}";
		sudo /usr/bin/hdiutil attach ../l2tbinaries/macos/${PACKAGE}-*.dmg;
		sudo /usr/sbin/installer -target / -pkg /Volumes/${PACKAGE}-*.pkg/${PACKAGE}-*.pkg;
		sudo /usr/bin/hdiutil detach /Volumes/${PACKAGE}-*.pkg
	done

elif test -n "${FEDORA_VERSION}";
then
	CONTAINER_NAME="fedora${FEDORA_VERSION}";

	docker pull registry.fedoraproject.org/fedora:${FEDORA_VERSION};

	docker run --name=${CONTAINER_NAME} --detach -i registry.fedoraproject.org/fedora:${FEDORA_VERSION};

	docker exec ${CONTAINER_NAME} dnf install -y dnf-plugins-core;

	docker exec ${CONTAINER_NAME} dnf copr -y enable @gift/dev;

	if test -n "${TOXENV}";
	then
		docker exec ${CONTAINER_NAME} dnf install -y python3-tox;

	elif test ${TRAVIS_PYTHON_VERSION} = "2.7";
	then
		docker exec ${CONTAINER_NAME} dnf install -y git python2 ${RPM_PYTHON2_DEPENDENCIES} ${RPM_PYTHON2_TEST_DEPENDENCIES};
	else
		docker exec ${CONTAINER_NAME} dnf install -y git python3 ${RPM_PYTHON3_DEPENDENCIES} ${RPM_PYTHON3_TEST_DEPENDENCIES};
	fi

	docker cp ../plaso ${CONTAINER_NAME}:/

elif test -n "${UBUNTU_VERSION}";
then
	CONTAINER_NAME="ubuntu${UBUNTU_VERSION}";

	docker pull ubuntu:${UBUNTU_VERSION};

	docker run --name=${CONTAINER_NAME} --detach -i ubuntu:${UBUNTU_VERSION};

	docker exec ${CONTAINER_NAME} apt-get update -q;
	docker exec ${CONTAINER_NAME} sh -c "DEBIAN_FRONTEND=noninteractive apt-get install -y locales software-properties-common";

	docker exec ${CONTAINER_NAME} add-apt-repository ppa:gift/dev -y;

	docker exec ${CONTAINER_NAME} locale-gen en_US.UTF-8;

	if test -n "${TOXENV}";
	then
		docker exec ${CONTAINER_NAME} add-apt-repository universe;
		docker exec ${CONTAINER_NAME} add-apt-repository ppa:deadsnakes/ppa -y;

		DPKG_PYTHON="python${TRAVIS_PYTHON_VERSION} python${TRAVIS_PYTHON_VERSION}-dev";

		docker exec ${CONTAINER_NAME} sh -c "DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential ${DPKG_PYTHON} tox";

	elif test ${TRAVIS_PYTHON_VERSION} = "2.7";
	then
		docker exec ${CONTAINER_NAME} sh -c "DEBIAN_FRONTEND=noninteractive apt-get install -y git python ${DPKG_PYTHON2_DEPENDENCIES} ${DPKG_PYTHON2_TEST_DEPENDENCIES}";
	else
		docker exec ${CONTAINER_NAME} sh -c "DEBIAN_FRONTEND=noninteractive apt-get install -y git python3 ${DPKG_PYTHON3_DEPENDENCIES} ${DPKG_PYTHON3_TEST_DEPENDENCIES}";
	fi

	docker cp ../plaso ${CONTAINER_NAME}:/

elif test ${TRAVIS_OS_NAME} = "linux" && test ${TARGET} != "jenkins";
then
	if test ${TARGET} = "pylint";
	then
		sudo add-apt-repository ppa:gift/pylint3 -y;
	fi

	sudo add-apt-repository ppa:gift/dev -y;
	sudo apt-get update -q;

	if test ${TRAVIS_PYTHON_VERSION} = "2.7";
	then
		sudo apt-get install -y ${DPKG_PYTHON2_DEPENDENCIES} ${DPKG_PYTHON2_TEST_DEPENDENCIES};
	else
		sudo apt-get install -y ${DPKG_PYTHON3_DEPENDENCIES} ${DPKG_PYTHON3_TEST_DEPENDENCIES};
	fi
	if test ${TARGET} = "pylint";
	then
		sudo apt-get install -y pylint;
	fi
fi

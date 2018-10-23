#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: [spec-file] [version] [repo (optional)]"
  exit 1
fi

spec=$1
version=$2
repo=$3

chown $(whoami). "${spec}"
rpmbuild --undefine=_disable_source_fetch -ba "${spec}" --define "main_version ${version}"

if [ -n "${repo}" ]; then
  mkdir -p "${repo}"/x86_64/RPMS "${repo}"/SRPMS
  mv /root/rpmbuild/RPMS/x86_64/* "${repo}"/x86_64/RPMS
  mv /root/rpmbuild/SRPMS/* "${repo}"/SRPMS/

  createrepo "${repo}"/x86_64
  createrepo "${repo}"/SRPMS
fi

#!/bin/bash

set -e

case "$(uname -s)" in
  Darwin)
    download_url='https://releases.hashicorp.com/terraform/0.8.3/terraform_0.8.3_darwin_amd64.zip'
    ;;
  Linux)
    download_url='https://releases.hashicorp.com/terraform/0.8.3/terraform_0.8.3_linux_amd64.zip'
    ;;
  *)
    echo 'Unsupported OS'
    echo 'Download binary from https://www.terraform.io/downloads.html manually'
    exit 1
    ;;
esac

zipfile="/tmp/terraform.zip"
wget -O "$zipfile" "$download_url"
unzip "$zipfile" -d "$LOCALBIN"

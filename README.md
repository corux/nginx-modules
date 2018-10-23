# Nginx CentOS 7 Modules

This Nginx build creates a dynamic module for the [VTS module](https://github.com/vozlt/nginx-module-vts).
The dynamic modules are compiled against the current mainline and stable releases of Nginx.

For ease of use two yum repositories are provided:

## Mainline Channel

```{plain}
[nginx-modules]
name=nginx-modules repo
baseurl=https://corux.github.io/nginx-modules/mainline/centos/7/$basearch/
gpgcheck=0
enabled=1
```

## Stable Channel

```{plain}
[nginx-modules]
name=nginx-modules repo
baseurl=https://corux.github.io/nginx-modules/centos/7/$basearch/
gpgcheck=0
enabled=1
```

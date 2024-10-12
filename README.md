# cpp-dev-env-docker

>这是一个docker容器构建文件可以让你使用archlinux镜像构建出最新的C++开发环境。
>适用于中国的网络环境镜像优化，使用了清华大学联合镜像库，设置了时区为北京时间。
>有以下软件g++,gcc,gdb,clang,git,cmake,make,glances,which,htop,xmake,openssh
>你可以通过导出22端口连接容器


>This is a docker container build file that allows you to build the latest C++ development environment using archlinux images.
>It is suitable for China's network environment image optimization, using Tsinghua University joint image library, set the time zone to Beijing time.
>Have the following g + + software, GCC, GDB, clang, git, cmake, make glances, which, htop, xmake , openssh
>You can use port 22 to connect the container.

```
# /etc/ssh/sshd_config
...
PermitRootLogin yes
...
PasswordAuthentication yes
...
```
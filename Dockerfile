FROM archlinux:latest

RUN echo 'Server = https://mirrors.tuna.tsinghua.edu.cn/archlinux/$repo/os/$arch' | \
    cat - /etc/pacman.d/mirrorlist > /tmp/mirrorlist && \
    mv /tmp/mirrorlist /etc/pacman.d/mirrorlist &&\
    pacman -Syy --noconfirm &&\
    pacman -Syu --noconfirm &&\
    pacman -Syu --noconfirm gdb gcc cmake make xmake vim clang glances htop which git

LABEL "org.opencontainers.image.authors"="Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks), ZengZiYu <zengtudor@outlook.com>(@Zengtudor)"
ENV "TZ"="Asia/Shanghai"

EXPOSE 22

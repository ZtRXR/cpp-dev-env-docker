#!/bin/bash

# 检查 /etc/ssh 目录下是否已有主机密钥
if [ ! -f /etc/ssh/ssh_host_rsa_key ]; then
    echo "No SSH host key found, generating keys..."
    ssh-keygen -A  # 生成所有类型的主机密钥
else
    echo "SSH host key already exists, skipping key generation."
fi

# 启动 SSH 守护进程
/usr/sbin/sshd

# 保持容器运行（进入交互式 bash）
exec /bin/bash

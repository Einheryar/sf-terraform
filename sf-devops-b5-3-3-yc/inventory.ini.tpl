[webservers]
${webserver-1}
${webserver-2}

[dbservers]
${dbserver-1}
${dbserver-2}
${dbserver-3}

[all:vars]
ansible_ssh_private_key_file = ${ansible_ssh_private_key_file}
ansible_ssh_user = ${ansible_ssh_user}

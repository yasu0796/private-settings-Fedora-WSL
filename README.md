# Private Settings for Fedora for WSL

## 1. Download Fedora for WSL

- [WhitewaterFoundry/Fedora-Remix-for-WSL: Fedora Remix for Windows Subsystem for Linux.](https://github.com/WhitewaterFoundry/Fedora-Remix-for-WSL)
- F42+ [Fedora in Windows Subsystem for Linux :: Fedora Docs](https://docs.fedoraproject.org/en-US/cloud/wsl/)
  - It may only support WSL2

## 2. Prepare

```bash
sudo dnf install git ansible
git clone https://github.com/yasu0796/private-settings-Fedora-WSL.git
```

## 3. Run

```bash
cd private-settings-Fedora-WSL/ansible
sudo ansible-playbook -i hosts.yaml playbook-private-settings.yaml -v
```

## 4. Start sshd

```bash
sudo /usr/sbin/sshd
```

## Troubleshooting


## Limitations

This playbook doesn't cointain ssh keys.

WSL can't use these packages

- nmap
- tcpdump

## Information

- [dnf – Manages packages with the dnf package manager — Ansible Documentation](https://docs.ansible.com/ansible/latest/modules/dnf_module.html)
- [file – Manage files and file properties — Ansible Documentation](https://docs.ansible.com/ansible/latest/modules/file_module.html)
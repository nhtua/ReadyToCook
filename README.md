# ReadyToCook: Workstation Setup Automation

This repository provides Ansible playbooks for automated workstation setup and configuration. It leverages community-shared configurations to streamline the deployment of development environments.

## Rationale for Ansible over Dotfiles
Ansible provides comprehensive configuration management, including package installation verification, operating system-specific conditional execution, and service management. It offers state awareness, dependency handling, and conditional logic, ensuring robust environment setup, which are advanced capabilities beyond traditional dotfile management.

## Installation

### macOS:
```bash
brew install ansible
```

### Arch Linux:
```bash
sudo pacman -S ansible
```

## Usage
Ansible playbooks are located in OS-specific directories. Each `.yml` file represents a distinct playbook. Review embedded documentation for functionality and potential interactions.

### Configuration Management (Dotfiles):
```bash
ansible-playbook <path/to/your/choosed/playbook.yml>
```

### System Update (Linux packages and software):
```bash
ansible-playbook <path/to/your/choosed/playbook.yml> --ask-become --extra-vars "should_update_os=true"
```

Configuration files managed via symlinks are automatically updated upon source file modification. Playbook changes require re-execution of the setup command.

## Directory Structure

This repository organizes Ansible playbooks by target operating system. Each `.yml` file within an OS-specific directory performs a distinct setup task. Common configurations for Python development are included, with provisions for additional user-contributed playbooks.

```
ReadyToCook_repo/
|--OperatingSystem/
|  |--00.playbook-for-a-thing.yml
|  |--01.playbook-for-b-thing.yml
|--Shared/
|  |--common-file.xyz
|  |--common-file.abc
|--Nonsharable/
|  |--something-else
```

### Specialized Directories:
1. `Shared/`: Contains common configuration files for various applications, providing basic operational settings.
2. `Nonsharable/`: Designed for system-specific customizations. Files in this directory can be modified locally and applied via setup commands without Git tracking.

## Contribution Guidelines
Local modifications are supported without requiring repository commits. For contributions, adhere to the following:
- Avoid committing sensitive information (e.g., SSL keys, certificates, passwords).
- Develop playbooks to include checks for existing files and system state, preventing loss of custom configurations.
- Place playbook files in the appropriate operating system directory, using an increasing numerical prefix. Ensure consistent prefix numbering across different OSes; skip numbers for OSes where a playbook is not applicable.

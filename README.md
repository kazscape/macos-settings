# macOS Setup with Ansible

This repository automates the provisioning and configuration of a macOS development environment using **Ansible**. It manages Homebrew packages, dotfiles, and system preferences in a modular, role-based architecture.

## 🚀 Features

- **Role-Based Architecture**: Organized into modular roles (`homebrew`, `zsh`, `nvim`, `wezterm`, etc.) for better maintainability.
- **Makefile Support**: Simple commands to check and apply configurations without typing long Ansible commands.
- **Homebrew Management**: Automates installation of Formulae (CLI tools) and Casks (GUI applications).
- **Dotfiles Integration**: Configuration files are managed within each Ansible role and symlinked directly to `~/.config/`.

## 📋 Prerequisites

Before running the playbook, ensure you have **Ansible** installed on your machine.

### 1. **Install Homebrew** (if not already installed):
```bash
/bin/bash -c "$(curl -fsSL [https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh](https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh))"

```

### 2. **Install Ansible**:

```bash
brew install ansible

```

## 🛠️ Usage

This project uses a `Makefile` to simplify execution. Run the following commands from the project root.

### 1. Dry Run (Check)

Checks for syntax errors and simulates the changes without applying them. Useful for verifying what will happen.

```bash
make check

```

*(Equivalent to: `ansible-playbook local.yml --syntax-check` and `--check` mode)*

### 2. Apply Changes

Executes the playbook and applies the configurations to your machine.
**Note:** You may be asked for your `sudo` password during execution for system changes.

```bash
make apply

```

## ⚙️ Configuration

You can customize the installation by editing the variables and playbook files.

### Managing Packages

To add or remove software, edit **`group_vars/all.yml`**:

* **`homebrew_packages`**: List of CLI tools (e.g., `git`, `neovim`, `tree`).
* **`homebrew_cask_apps`**: List of GUI applications (e.g., `google-chrome`, `iterm2`).

### Enabling/Disabling Roles

To control which tasks are run, edit **`local.yml`**.

```yaml
  roles:
    - common
    - zsh
    - nvim
    - wezterm
    # - macos     <-- Uncomment to enable

```

## 📏 Zsh Configuration Convention

Zsh configuration files are split and managed in `~/.config/zsh/conf.d/`. They are loaded in alphabetical order.
We use a **numbering prefix** to ensure dependencies are loaded in the correct order.

| Prefix | Category | Description | Examples |
| --- | --- | --- | --- |
| **00-09** | **Bootstrap** | Initialization required before anything else | `00-p10k.zsh` (Instant Prompt) |
| **10-19** | **Zsh Core** | Basic shell behavior | `10-basics.zsh` (History, Bindkeys) |
| **20-29** | **Environment** | Runtimes and PATH setup | `20-runtimes.zsh` (Node, Java, Go) |
| **30-49** | **CLI Tools** | Common tools configurations | `30-tools.zsh`, `31-fzf.zsh` |
| **50-79** | **Apps (Roles)** | App-specific aliases and integration | `50-wezterm.zsh`, `50-nvim.zsh` |
| **80-89** | **Visuals** | Syntax highlighting and theming | `80-highlighting.zsh` |
| **90-99** | **Local** | Secrets and local overrides | `99-local_secrets.zsh` |

## 📂 Directory Structure

```text
.
├── Makefile              # Commands for easy execution (check/apply)
├── ansible.cfg           # Ansible configuration file
├── inventory             # Defines the target host (localhost)
├── local.yml             # Main playbook entry point
├── group_vars/
│   └── all.yml           # Global variables (Package lists, Repo URLs)
└── roles/                # Task definitions by category
    ├── common/           # Common CLI tools & basic Zsh configs
    ├── zsh/              # Zsh setup & Powerlevel10k
    ├── nvim/             # Neovim setup & config files
    ├── wezterm/          # WezTerm setup & config files
    └── macos/            # macOS system preferences

```

## ⚠️ Notes

* **Monorepo Structure**: Configuration files (dotfiles) are located inside `roles/<role_name>/files/`. Ansible symlinks them to the target destination.

```

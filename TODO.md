# Ansible System Setup TODO

This file outlines the tasks required to create an Ansible playbook for system setup.

Specs:
System will be Debian sid (always)
always search for latest ways to install or latest versions if you are unsure
**Do not use snap**
if some configs need initialization (i.e. dconf) create script so i execute it and create file (or config) asset to be used in playbook

## Phase 1: Core Setup

- [x] Initialize Ansible project structure (`ansible.cfg`, `inventory`, `system.yml`).
- [x] Create a `README.md` with project description and usage instructions.
- [x] Define variables and defaults (e.g., `vars/main.yml`, `defaults/main.yml`).

## Phase 2: User & Shell Configuration

- [x] Create a role for user management (e.g., creating users, setting up groups).
- [x] Create a role for shell configuration (e.g., zsh, bash, fish).
- [x] Install and configure common shell tools (e.g., `git`, `curl`, `wget`).

## Phase 3: Application Installation

- [x] Create a role for installing system packages
- [x] Save variables (package list, etc) in top level (`vars/main.yml`) not inside each role

## Phase 4: Dotfiles Management

- [x] Create a role to manage dotfiles (e.g., `.config`, `.gitconfig`).
- [x] Use a version control system to manage dotfiles.

## Phase 5: Testing & Validation

- [ ] Create a testing strategy (e.g., using `molecule` or a local VM).
- [ ] Write tests for each role.
- [ ] Run tests and validate the playbook.

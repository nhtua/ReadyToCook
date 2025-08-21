# Ready to Cook, Chef?? 🧑‍🍳 #

Ever dreamt of setting up your dev environment faster than a microwave dinner? Well, dream no more! This repo helps you get your workstation ready in minutes, leveraging community-shared configs.

### Why not just dotfiles? (Because we're not barbarians)

Look, `dotfiles` are cute. They're like that one friend who still uses a flip phone – charming, but kinda limited. They're great for copying files, but what if you need to check if a package is installed? Or maybe only run something if you're on a specific OS? Or perhaps you need to restart a service ONLY if its config changed?

That's where Ansible struts in like a Michelin-star chef. It's the master of configuration management, doing way more than just copy-pasting. It understands state, can do conditional checks, handle dependencies, and even order a pizza if you configure it right (okay, maybe not the pizza, but you get the idea!). It's about making sure your dev environment isn't just *there*, but *perfectly seasoned* and *ready to cook*.


### Installation (Because you can't cook without a stove)

For macOS:

```
brew install ansible
```

For Arch Linux:

```
sudo pacman -S ansible
```


### Running setup (Time to get cooking!)

First, peek into those OS-specific directories (we'll break down the file structure later). Each YAML file is an Ansible playbook. Pick your poison wisely! Just a heads-up: some playbooks might fight each other, so read the embedded docs in each YAML to avoid a kitchen disaster. I'm looking for your receipt to do better conflict prevention here.

To run your chosen playbook:

```
ansible-playbook --ask-become <path/to/your/choosed/playbook.yml>
```

Whenever you tweak a config, just re-run the setup command to apply those sweet, sweet changes. It's like seasoning your dish – gotta taste and adjust!


### Playbooks and files structure

This repo is a collection of Ansible Playbooks, each directory is matching to target Operating System.

In each directory, each Yaml file does a certain setup for you. I added my common basic usages for coding with Python. Someone else may adds other playbook as their will.

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


You noticed there are 2 special directories:

1. `Shared/`: These are common configuration files for various application. You want a most basic config that allows the application to start working.
2. `Nonsharable/`: These are customization only available on your system. You can put them here, modify the configuration, run the setup command again to apply. These files won't be upload to git repository.


### Customization

These are just a way of life that speeds up or backs up for your local machine / working station. You can modify anything without pushing changes back to the repo.

In case you want to contributes your playbook and configuration, keep in mind:

- Don't commit to the repo the sensitive information like SSL keys, certificates, passwords, etc.
- Write the playbook properly that checks existing files and state also prevent the loss of your customization
- Put playbook files in an appropriate operating system directory, with increasing prefix number. It should have an equal prefix number if different OSes, and skip it if it is not available for some OSes.

Thank you. And...

**Let's cook!!**

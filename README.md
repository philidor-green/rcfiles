# Macbook Pro dotfiles and setup

The following repository and files are needed to fully setup a Macbook Pro.

### Git (XCode)

Install it on the command line first, it will ask for permission.

```
xcode-select --install
```

### Dot files

```
git clone https://gitlab.com/philidor-green/rcfiles.git
cd rcfiles
```

Install Homebrew and OhMyZSH, Sync the files.

```
./bootstrap.sh
```

Apply macOS settings.

```
./macos.sh
```

### Install tools and apps

Install tools and applications with Homebrew bundle.

```
brew bundle
```

This makes use of the [Brewfile](Brewfile) definitions.

### Sources

Credit to https://about.gitlab.com/blog/2020/04/17/dotfiles-document-and-automate-your-macbook-setup/

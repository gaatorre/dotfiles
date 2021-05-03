import os

apt_apps = ["neovim tmux fish"]
other_apps = ["curl -L https://get.oh-my.fish | fish",
              "git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm",
              "sudo usermod --shell /usr/bin/fish $USER"]

def main():
    print("Downloading apps")

    for i in apt_apps:
        os.system(f"sudo apt-get install -y {i}")

    for i in other_apps:
        os.system(f"{i}")

if __name__ == "__main__":
    main()

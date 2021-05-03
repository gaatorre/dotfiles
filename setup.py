import os

apt_apps = ["nvim tmux fish"]
other_apps = ["curl -L https://get.oh-my.fish | fish"]

def main():
    print("Downloading apps")

    for i in apt_apps:
        os.system(f"sudo apt-get install -y {i}")

    for i in other_apps:
        os.system(f"{i}")

if __name__ == "__main__":
    main()

import os

dotfiles = ["~/.config/nvim", "~/.tmux.conf", "~/.fonts", "~/.vimrc"]

def git_update():
    os.system("git add .")
    os.system("git commit -m \"Updating dotfiles\"")
    os.system("git push")

def main():
    print("Backing up dotfiles")

    for i in dotfiles:
        os.system(f"cp -r {i} .")

    git_update()

if __name__ == "__main__":
    main()

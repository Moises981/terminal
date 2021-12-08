# Install dependencies
sudo apt install curl -y
sudo apt install git -y
sudo apt install zsh -y
sudo apt install terminator -y
# Install Oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Terminator theme
mkdir -p $HOME/.config/terminator/plugins
wget https://git.io/v5Zww -O $HOME"/.config/terminator/plugins/terminator-themes.py"

# Install Font Meslo Regular
mkdir $HOME"/.fonts"
cp MesloLGS\ NF\ Regular.ttf $HOME"/.fonts/"
fc-cache -fv

# Zsh theme
if [[ ! -d ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/themes/powerlevel10k" ]];
    then
        git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/themes/powerlevel10k"
    fi
cp .p10k.zsh $HOME"/"

# Terminator settings
cp config $HOME"/.config/terminator/"

# Zsh Plugins
cp .zshrc $HOME"/.zshrc"

if [[ ! -d $HOME/".oh-my-zsh/custom/plugins/zsh-autosuggestions" ]];
    then
        git clone https://github.com/zsh-users/zsh-autosuggestions.git $HOME"/.oh-my-zsh/custom/plugins/zsh-autosuggestions"
    fi

if [[ ! -d $HOME/".oh-my-zsh/custom/plugins/zsh-syntax-highlighting" ]];
    then
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME"/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"
    fi

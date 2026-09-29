# vdmytriuk/tap

Homebrew tap для MacRemote (керування Mac з телефона або планшета).

    brew install --cask vdmytriuk/tap/macremote
    xattr -dr com.apple.quarantine /Applications/MacRemote.app

Homebrew завжди ставить карантин на cask-и (прапорець `--no-quarantine` видалено),
тому після встановлення треба один раз зняти карантин командою вище.
Без попереджень узагалі: `curl -fsSL https://vdmytriuk.github.io/macremote/install.sh | bash`

Сайт: https://vdmytriuk.github.io/macremote/

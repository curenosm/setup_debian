# Download clj
iwr -useb github.com/clojure/brew-install/releases/latest/download/win-install.ps1 | iex

# Download lein
choco install lein
choco install unzip
choco install maven
choco install gradle
choco install vim

# PowerShell Profile themes for oh-my-posh
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\tokyonight_storm.omp.json" | Invoke-Expression
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\1_shell.omp.json" | Invoke-Expression
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\clean-detailed.omp.json" | Invoke-Expression
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\di4am0nd.omp.json" | Invoke-Expression
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\emodipt-extend.omp.json" | Invoke-Expression
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\smoothie.omp.json" | Invoke-Expression

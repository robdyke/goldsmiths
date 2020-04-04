# goldsmiths
All materials from my BA Politics at Goldsmiths

## Install LaTeX etc

```sh
sudo apt-get install texlive-fonts-recommended
sudo apt-get install texlive-fonts-extra texlive-fonts-extra-doc texlive-fonts-recommended texlive-fonts-recommended-doc tipa
sudo apt-get install pandoc pandoc-citeproc
```

## Convert .tex to markdown

```sh
pandoc -s essay.tex -t markdown_mmd --filter pandoc-citeproc -o essay.md
```
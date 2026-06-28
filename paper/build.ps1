$ErrorActionPreference = "Stop"
Set-Location (Join-Path $PSScriptRoot "arxiv")
pdflatex -interaction=nonstopmode -halt-on-error main.tex
bibtex main
pdflatex -interaction=nonstopmode -halt-on-error main.tex
pdflatex -interaction=nonstopmode -halt-on-error main.tex
Copy-Item main.pdf ..\paired-acquisition-factorization-scorpion.pdf -Force
Copy-Item main.pdf ..\..\paired-acquisition-factorization-scorpion.pdf -Force
Write-Host "Built paired-acquisition-factorization-scorpion.pdf"

#!/bin/bash
# A script that pushes my csv and updates my files
CWD=$(pwd)

cd ~/OneDrive/Quarto/CV_Quarto

quarto render resume_alex.qmd --to pdf

mv resume_alex.pdf cv.pdf

cp cv.pdf ~/Library/CloudStorage/OneDrive-Personal/Quarto/personal_quarto_site/files

cp cv.pdf ~/Documents/Application_Materials/

cp cv.pdf ~/Library/CloudStorage/OneDrive-Personal/Quarto/personal_quarto_site/_site/files

cd ~/Library/CloudStorage/OneDrive-Personal/Quarto/personal_quarto_site

git pull

git add files/cv.pdf

git commit -m 'update cv '$(date +%d.%m.%y-%H:%M:%S)

git push

cd ~/OneDrive/Quarto/CV_Quarto

git pull

git add .

git commit -m 'update cv '$(date +%d.%m.%y-%H:%M:%S)

git push

cd $CWD

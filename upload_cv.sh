#!/bin/bash
# A script that pushes my csv and updates my files
CWD=$(pwd)

cd ~/OneDrive/PyProjects/CV_Quarto

quarto render resume_alex.qmd --to pdf

mv resume_alex.pdf cv.pdf

cp cv.pdf ~/Library/CloudStorage/OneDrive-Personal/Quarto/personal_quarto_site/files

cp cv.pdf ~/Documents/Application_Materials/

cd ~/Library/CloudStorage/OneDrive-Personal/Quarto/personal_quarto_site

git pull

git add static/files/cv.pdf

git commit -m 'update cv '$(date +%d.%m.%y-%H:%M:%S)

git push

cd ~/OneDrive/PyProjects/CV_Quarto

git pull

git add .

git commit -m 'update cv '$(date +%d.%m.%y-%H:%M:%S)

git push

cd $CWD

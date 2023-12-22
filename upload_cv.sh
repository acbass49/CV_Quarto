#!/bin/bash
# A script that pushes my csv and updates my files
CWD=$(pwd)

cd ~/OneDrive/Quarto/CV_Quarto

quarto render resume_alexV2.qmd --to pdf

#using version 2 of my resume now
mv resume_alexV2.pdf cv.pdf

cp cv.pdf ~/Library/CloudStorage/OneDrive-Personal/Quarto/personal_quarto_site/files

cp cv.pdf ~/Documents/Application_Materials/

cp cv.pdf ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/Documents/

quarto render ~/Library/CloudStorage/OneDrive-Personal/Quarto/personal_quarto_site

cd ~/Library/CloudStorage/OneDrive-Personal/Quarto/personal_quarto_site

git pull

git add .

git commit -m 'update cv '$(date +%d.%m.%y-%H:%M:%S)

git push

cd ~/OneDrive/Quarto/CV_Quarto

git pull

git add .

git commit -m 'update cv '$(date +%d.%m.%y-%H:%M:%S)

git push

cd $CWD

#!/bin/sh
### set folder theme name in the line below ### 
theme="hugo-creative-portfolio-theme"
echo "=== linking theme folders for => $theme ==="
echo ""
sleep 1


###### use theme folder themes/../archtypes ######
echo "=== Backup ./archetypes/ ==="
echo ""
sleep 1
mkdir ./archetypes/.backup
mv ./archetypes/ ./archetypes/.backup
## === uncomment line below to delete folder
# rm archetypes/*

touch ./archetypes/.uses-theme-folder
#cp -iR ./themes/$theme/archetypes ./archetypes


###### use: ./content ######
echo "=== Backup ./content/ ==="
echo ""
sleep 1
mkdir ./content/.backup
mv ./content/ ./content/.backup
## === uncomment line below to delete folder
# rm content/*

cp -iR ./themes/$theme/exampleSite/content/* ./content
touch ./themes/$theme/exampleSite/content/.use-root-folder


### use theme folder themes/../layouts
echo "=== Backup ./layouts/ ==="
echo ""
sleep 1
mkdir ./layouts/.backup
mv ./layouts/ ./layouts/.backup
## === uncomment line below to delete folder
# rm layouts/*

touch ./layouts/.uses-theme-folder
#cp -iR ./themes/$theme/layouts/ ./layouts


###### use: ./static ######
echo "=== Backup ./static/ ==="
echo ""
sleep 1
mkdir ./static/.backup
mv ./static/ ./static/.backup
## === uncomment line below to delete folder
# rm static/*

cp -iR ./themes/$theme/exampleSite/static/* ./static
touch ./themes/$theme/exampleSite/static/.use-root-folder


###### config.toml ######
mv config.toml config.toml.bak
cp -i ./themes/$theme/exampleSite/config.toml ./config.toml

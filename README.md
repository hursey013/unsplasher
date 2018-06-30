# unsplasher
Random desktop wallpapers for Xfce Desktop using [Unsplash Source](https://source.unsplash.com/)

## Installation
Clone this repository to your local machine
```
git clone https://github.com/hursey013/unsplasher.git
cd unsplasher
```
Make the update script executable
```
sudo chmod +x update.sh
```

### Configuration
```
nano update.sh
```
```
SIZE=1920x1080 #size of desktop
TERMS=wallpaper,nature #comma separated list
FEATURED_ONLY=true #limit results to photos included in curated collections
LOCAL=/tmp/wallpaper.jpg #where to store wallpaper locally
```
### Running the update script
#### Manual
To trigger the update manually
```
./update.ssh
```
#### Automatic
To configurethe wallpaper to change automatically
```
crontab -e
```
Add the following line to the end of the file, being sure to update the path to reflect the correct location
```
*/5 * * * * /path/to/unsplasher/update.sh
```
That should be it!

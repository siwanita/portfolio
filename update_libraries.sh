#! /bin/sh

# A useful script to update libraries

# Clean install
rm -rf node_modules package.json package-lock.json
# npm packages to install
npm install bootstrap@4.6.2 jquery@3.6.1 font-awesome@4.7.0

# Bootstrap
rm -rf _sass/bootstrap
mkdir -p _sass/bootstrap
# Copy scss (sass) files
cp -r node_modules/bootstrap/scss/* _sass/bootstrap
touch _sass/bootstrap/__DO_NOT_MODIFY
rm -rf assets/js/bootstrap
mkdir -p assets/js/bootstrap
# Copy the minified Bootstrap javascript file
cp node_modules/bootstrap/dist/js/bootstrap.bundle.min.* assets/js/bootstrap/
touch assets/js/bootstrap/__DO_NOT_MODIFY

# jQuery
rm -rf assets/js/jquery
mkdir -p assets/js/jquery
# Copy the minified jQuery javascript file
cp node_modules/jquery/dist/jquery.min.* assets/js/jquery/
touch assets/js/jquery/__DO_NOT_MODIFY

# Font Awesome
rm -rf _sass/font-awesome
mkdir -p _sass/font-awesome
# Copy scss (sass) files
cp -r node_modules/font-awesome/scss/* _sass/font-awesome
touch _sass/font-awesome/__DO_NOT_MODIFY
rm -rf assets/font-awesome
mkdir -p assets/font-awesome/css
# Copy the minified Font Awesome css file and source map
cp node_modules/font-awesome/css/font-awesome.min.css assets/font-awesome/css/
cp node_modules/font-awesome/css/font-awesome.css.map assets/font-awesome/css/
touch assets/font-awesome/css/__DO_NOT_MODIFY
mkdir -p assets/font-awesome/fonts
# Copy Font Awesome fonts
cp -r node_modules/font-awesome/fonts/* assets/font-awesome/fonts

# Remove packages, since we dont need them anymore
rm -rf node_modules
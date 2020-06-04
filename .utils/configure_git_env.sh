git remote update
git fetch
git checkout --track origin/gh-pages
git rm -rf .
touch .gitmodules
git restore -s master docs
git rm -r docs/common -r
git restore -s master templates
git submodule add https://github.com/aws-quickstart/quickstart-documentation-base-common.git docs/common
rm configure_git_env.sh
mv docs/images images

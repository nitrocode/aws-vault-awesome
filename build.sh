BASED_ON_TAG=v6.3.1

# add upstream
git remote add upstream git@github.com:99designs/aws-vault.git

# fetch and checkout upstream tag
git fetch --all --tags
git checkout $BASED_ON_TAG

# apply patiches from floating branches
git merge no-daemonize-server-patch
# additional patches ?
# readme patches ?
git merge goreleaser-patch

# recreate default branch
git branch -D main
git checkout -b main

# push up branch
git push -u origin -f main

# tag
git tag -a $BASED_ON_TAG-awesome -m "$BASED_ON_TAG + awesome"
git push origin $BASED_ON_TAG-awesome

# release new binaries
goreleaser release --rm-dist


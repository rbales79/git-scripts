# Update-all-Remote
## useful for migrating from one remote to another

# clone-all-github
## useful to clone down all of your github repos at once

# pull-all
## pulls changes from remote to all local repos

# push-all
## pushes changes from all local repos to remote


# delete-list-repos
## useful for bulk deleting github repos

- Open in a new tab for each github repo you want to delete https://github.com/username?tab=repositories
- Use onetab https://chrome.google.com/webstore/detail/onetab/chphlpgkkbolifaimnlloiipkdnihall to shorten them to a list.
- Save that list as a text file and copy the path
- The list should be in the form of “username\repo_name” per line; remove everything up to and including the "|"
- Register a new personal access token with a 'delete_repo perm' https://github.com/settings/tokens/new
- Copy the access_token into delete-lists-repos.bash replacing xxx with your access token, and run the command in gitbash

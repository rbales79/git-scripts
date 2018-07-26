## Update-all-Remote
# useful for migrating from one remote to another

## clone-all-github
# useful to clone down all of your github repos at once

## pull-all
# pulls changes from remote to all local repos

## push-all
# pushes changes from all local repos to remote


## delete-list-repos
# useful for bulk deleting github repos

- Open in a new tab all to-be-deleted github repos https://github.com/username?tab=repositories
- Use onetab https://chrome.google.com/webstore/detail/onetab/chphlpgkkbolifaimnlloiipkdnihall to shorten them to a list.
- Save that list to some path
- The list should be in the form of “ur_username\repo_name” per line. Use regex search (Sublime text could help). Search for ' |.*' and replace by empty.
- Register a new personal access token with a 'delete_repo perm' https://github.com/settings/tokens/new
- Copy the access_token and run the following line replacing xxx with your access token.

Use this trick to bulk delete your old repos or old forks

Open in a new tab all to-be-deleted github repositores (Use the mouse’s middle click or Ctrl + Click) https://github.com/username?tab=repositories
Use onetab https://chrome.google.com/webstore/detail/onetab/chphlpgkkbolifaimnlloiipkdnihall to shorten them to a list.

Save that list to some path

The list should be in the form of “ur_username\repo_name” per line. Use regex search (Sublime text could help). Search for ' |.*' and replace by empty.

Register a new personal access token with a 'delete_repo perm' https://github.com/settings/tokens/new

Copy the access_token and run the following line replacing xxx with your access token.

Linux and OS X :

while read r;do curl -XDELETE -H 'Authorization: token xxx' "https://api.github.com/repos/$r ";done < repos
Windows:

get-content D:\repolist.txt | ForEach-Object { Invoke-WebRequest -Uri https://api.github.com/repos/$_ -Method “DELETE” -Headers @{"Authorization"="token xxx"} }
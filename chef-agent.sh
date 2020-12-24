cd ~/chef-repo
knife cookbook upload first_cookbook --cookbook-path=/root/chef-repo/cookbooks
knife ssh 'name:node-client' 'sudo chef-client' -x medinillag -P medinillag
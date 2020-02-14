import sys
import os
from github import Github
from parent_path import *
from github_cred import *


def create_repo():
    repo_name = str(sys.argv[1])
    os.makedirs(parent_path + '/' + str(repo_name))
    user = Github(username, password).get_user()
    repo = user.create_repo(repo_name)
    print(f'Succesfully created repository {repo_name}')


if __name__ == '__main__':
    create_repo()

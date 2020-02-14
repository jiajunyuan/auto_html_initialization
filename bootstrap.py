import sys
import os
import time
import urllib.request
from parent_path import *


def retrieve_bootstrap():
    time.sleep(2)
    url = 'https://github.com/twbs/bootstrap/releases/download/v4.4.1/bootstrap-4.4.1-dist.zip'
    file_path = parent_path + '/' + str(sys.argv[1]) + '/' + 'css/'
    full_file_path = os.path.join(file_path, 'bootstrap.zip')
    urllib.request.urlretrieve(url, full_file_path)


if __name__ == "__main__":
    retrieve_bootstrap()

import sys
import os
import time
import urllib.request
from parent_path import *


def retrieve_jquery():
    time.sleep(2)
    url = 'https://code.jquery.com/jquery-3.4.1.js'
    file_path = parent_path + '/' + str(sys.argv[1]) + '/' + 'js/'
    full_file_path = os.path.join(file_path, 'jquery.js')
    urllib.request.urlretrieve(url, full_file_path)


if __name__ == "__main__":
    retrieve_jquery()

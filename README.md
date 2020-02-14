# Auto HTML Initialization

## Project Description
For quick and easy html project initialization. Combine with [Emmet functionalities](https://code.visualstudio.com/docs/editor/emmet) for even better results.

## Instructions
1. Install Python.
2. Install requirements.
```
$ pip install -r requirements.txt
```
3. Add this line to ~/.bashrc to add custom functions to terminal.
```
source <Auto HTML Initialization parentdirectory>/auto_html_initialization/init.sh
```
4. Open terminal, set projects parent directory. All initialized projects will be hosted here.
```
$ def_parent_path <projects parent directory>
```
5. Set Github credentials.
```
$ def_github_credentials <username> <password>
```
6. Initialize project.
```
$ init <project name>
```

## FAQ
**Q:** Github asks me for my credential when pushing to master.<br>
**A:** Link your device to Github with [SSH](https://help.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh).<br>
**Q:** I messed up defining project parent path and Github credentials.<br>
**A:** You can edit parent_path.py and github_cred.py directly.

## Custom Modules
The following modules can be enabled or disabled by commenting in init.sh.
* **Bootstrap.** Downloads Bootstrap.zip to <project directory>/css/, must manually extract file.
* **Jquery.** Downloads jquery.js to <project directory>/js/.

## Progress
For current progress and future planned features, visit https://trello.com/b/4twf7Rh3/auto-html-initialization.

## Acknoledgements
Special thanks to Kalle Hallden for the idea and base code.
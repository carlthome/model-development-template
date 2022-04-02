# Model Development Template
This is a git repo template for creating new ML models within Jupyter Notebooks and/or VS Code.

## Features
- Development container oriented
- Jupyter Notebook oriented
- A basic Python package structure is included for migrating reusable code out of notebooks

## Delimitations
- This is not for automated model training. The design focus is on interactive development of new algorithms.
- The idea is not to use the latest and coolest technologies, but rather to keep things fairly standard and boring such that the focus remains on modelling.

# Usage
After cloning this repo, either use your terminal or Visual Studio Code (recommended).

## Visual Studio Code
Install the [Remote Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension and open this repo as your workspace. See [.devcontainer](.devcontainer) for details.

## Terminal
1. (optional) Bootstrap a developer toolchain via Docker by `make shell` (or manually install Python and direnv).
1. With repo root as working directory, create a Python virtual environment by `direnv allow`.
1. Install current Python dependencies with `make install` (reset by `make clean`).
1. Start a Jupyter Notebook server with `jupyter notebook` and browse to https://localhost:8888

Tip: It's also possible to execute notebooks on the command line with `jupyter execute` (as an alternative to "Restart and Run All") or `ipython -i my_notebook.ipynb` to halt on errors and drop into an IPython session for interactive debugging.

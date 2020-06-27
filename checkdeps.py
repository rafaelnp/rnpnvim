#!/usr/bin/env python3
"""
Check rnpvim (neovim) dependencies

"""

from os import path
from os import environ


def check_file_inpath(file):
    """
    check if file exist in the PATH provided directories

    return:
        found: True if file is found in $PATH list, otherwise false
        fullpath:  if the file is found its path, otherwise None

    """
    found = False
    fullpath = None

    pathenv = str.split(environ["PATH"], ":")

    for inpath in pathenv:
        tmppath = inpath + '/' + file

        if path.exists(tmppath) is True:
            fullpath = tmppath
            found = True
            break

    return found, fullpath


def print_filestatus(name, file=None):
    """
    check the result of file search and print it in the terminal

    name: application name
    file: filename to be searched and its result to be printed
    """

    if file is None:
        file = name

    found, filepath = check_file_inpath(file)

    if found is True:
        print("{:20}: installed: yes,  path: {}".format(file, filepath))
    else:
        print("{:20}: installed: no".format(file))


def main():
    """
    main function
    """

    print("=========================\n" +
          "check rnpvim dependencies\n" +
          "=========================\n")

    print("1 - distribution packages\n" +
          "=========================")
    print_filestatus("ag")
    print_filestatus("ctags")
    print_filestatus("ccls")
    print_filestatus("clangd")
    print_filestatus("cmake")
    print_filestatus("editorconfig")
    print_filestatus("fzf")
    print_filestatus("git")
    print_filestatus("go")
    print_filestatus("luarocks")
    print_filestatus("ncdu")
    print_filestatus("nvim")
    print_filestatus("npm")
    print_filestatus("pip")
    print_filestatus("ranger")

    print("\n2 - javascript packages\n" +
          "=======================")
    print_filestatus("markdownlint")
    print_filestatus("nodejs")
    print_filestatus("neovim")

    print("\n3 - go packages\n" +
          "===============")
    print_filestatus("efm-langserver")

    print("\n4 - lua packages\n" +
          "================")
    print_filestatus("luacheck")
    print_filestatus("lua-lsp")

    print("\n5 - python packages\n" +
          "===================")
    print_filestatus("hdl_checker")
    print_filestatus("pyls")
    print_filestatus("vint")
    print_filestatus("yamllint")


if __name__ == "__main__":
    main()

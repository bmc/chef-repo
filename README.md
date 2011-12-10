# My Chef Repository

## Introduction

This repo is my personal repository of [Chef][] cookbooks. As recommended in
the Chef docs, the initial repo was cloned from the Opscode template
[chef-repo][]. I've left the various empty directories (e.g., `certificates`)
intact, in case I need them.

I use this repo is a dumping ground for common cookbooks I use across specific
[Vagrant][] and [Chef][] configurations. The repo contains _only_ cookbooks
I've written. Since I use [Librarian][] to refer to and manage remote
cookbooks, I have no need to stash local copies of other peoples' cookbooks in
here.

The original [chef-repo][] README is in `Chef-README.md`.

## License and Copyright

These cookbooks are released under a BSD license and copyright &copy; Brian M.
Clapper. See the `LICENSE.md` file in this repository.

## Disclaimer

While I use these cookbooks myself, I do not warranty them in any way.
If you want to use them or clone them, you're welcome to them, but you
should read any docs and the recipe source code first.

If these recipes fail to work properly, break your virtual machine, brown out
your electrical circuits, and give your dog the plague, *it's not my fault*.

[Chef]: http://www.opscode.com/chef/
[chef-repo]: https://github.com/opscode/chef-repo
[Vagrant]: http://vagrantup.com/
[Librarian]: https://github.com/applicationsonline/librarian


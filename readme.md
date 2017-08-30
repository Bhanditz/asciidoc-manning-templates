# Asciidoctor Templates for Manning Manuscripts

[![JetBrains team project](http://jb.gg/badges/team.svg)](https://confluence.jetbrains.com/display/ALL/JetBrains+on+GitHub)

Manning requires authors to submit manuscripts in either MS Word or Docbook. Some authors would prefer a more friction-free writing option such as Asciidoc.

Although Asciidoc can produce Docbook files, they are incompatible with Manning's custom Docbook schema. Fortunately, the [Asciidoctor](http://asciidoctor.org/) tool can be customized by referencing a directory containing templates.

This repository contains templates that customize Asciidoc to emit Manning-ready Docbook.

To use these templates, clone the repository to your local machine. Then reference the cloned repository directory with the `-T` option. For example:

```sh
$ asciidoctor -T asciidoc-manning-templates -b docbook45 chXX.txt
```

This repository of templates is just starting, so it's very likely that you'll encounter gaps in what is covered by a custom template and what is not. If there's something you need to support building your book, please submit an issue here or (better yet) create the template yourself and submit it via a pull request.

## Convenience scripts

Although not technically part of this collection of Asciidoctor template, I've created a few scripts for conveniently
Asciidoc into Manning Docbook and then into PDF. I've placed these script in the `scripts` directory. Use them or ignore
them...it's up to you.

# Notes

## 14 June 2022

Battling with bookdown and LaTeX .pdf format. Discovered...

* `documentclass: book` needs to go in `index.Rmd`, and doesn't work in `_output.yml`.

* `bibliography:` needs to go in `index.Rmd`, otherwise it won't appear.

* `biblio-style: apalike` *can't* go in `index.Rmd`, otherwise it'll keep doing footnotes instead.

* `mainfont = "Georgia"` can go in the `bookdown::render_book("book", bookdown::pdf_book())` command, or `index.Rmd`.

* `csl: chicago-fullnote-bibliography.csl` needs to go into `index.Rmd` to create the links in `bs4_book`. It needs to be hashed out to allow APA style in the `pdf_book`. 

## 1 June 2022

Meeting with EB re: Chapter 2 draft:

* Inbreeding. Explain phenotype distributions. Run heritability analysis yourself.

* Nucleotide diversity – start with a para of the question. “An open question is…” One concern is inbreeding would select for domestication phenotypes. 

* ABBABABA – starting with neanderthal in humans. Explain what it is. Confirmed Northern and Southern are different species. Definition is “does it happen a lot in the wild”? *Allopatry*. Ideally we have better sampling of northern and Korean to get a better idea. Very low probability of reproduction in the wild, probably due to ecology and behavioural phenotypes. Tie in to other material. Give the default expectation due to what we think is going on due to previous work, etc. Northern Japanese are physically very close, but Japanese Alps. Whereas Korea has a sea between it. Make it explicit. Spivakov did find no interbreeding, but he didn’t have so many genomes..”

* LD decay. “What can we expect when we do genetic mapping?”

* SVs: ONT: Want to show to your examiners that you understand what’s going on. Take people through why long reads are good for SVs. We always know detecting deletions is much easier than detecting insertions with reference-based systems.

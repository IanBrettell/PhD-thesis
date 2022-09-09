# Notes

## 9 September 2022

Floating tables guidance: 

    - https://stackoverflow.com/questions/66091846/how-to-i-keep-a-kable-caption-with-a-floating-table

    - https://stackoverflow.com/questions/61995019/kableextra-float-options-float-left-or-float-right-for-format-latex-not-work 



## 2 August 2022

Meeting with Ali:
- Is periodicity related to the number of vertebrae?
    - Function of period, and how long the clock is on for.
    - The eel makes 112 vertebrae, while the zebrafish make 30. But eels has clock that goes for a lot longer.
    - Seems like evolution is playing on both period and total clock.
- Difference between Her7 and Hes7?
    - Homologue –core clock oscillator.
    - Medaka and zebrafish have duplications in Her genes, so there are more than in mouse and human.
- What’s the difference between Cab and iCab?
- What generation were Cab and Kaga when sequenced?
    - Cabs is 99, and Kaga were 55. The genetics of Kaga are complicated. 20% loss of fish that don’t make it to hatch. Some hatch, but don’t make it to adulthod (10%).
- Any period measurements for Kaga?
    - Not from the Her7 reporter. Trying with a backcross with a Kaga. Take an F2 male, then backcross to female Kaga, image, then clean up the genome, then cross back to a Kaga.
- Paper that shows difference in period between Cab and Kaga?
- Clock slows down. COnserved in zebrafish and medaka. Doesn’t happen in mouse. Slope in F2 seems to be conserved. Don’t know what the explanation is.
- Send the period slope data so I can generate a figure
- Next steps?
    - List of 53 genes for period. RNA seq on unsegmented PSMs – which are expressed? From those, took top 5 that play a role in segmentation, then trying to do knock outs. MESBB – when we knock i tout, we get faster period. First example of a genetic perturbation that makes it faster. 3 minute difference.
    - Kaga has lower period (therefore faster). Measurements based on segment forming time. Less accurate; not as stringent. Based on subjective “bright field” image measurements. More global. Pure Kaga has around 50 minutes, as opposed to 60 minutes.
- Segmentation clock is highly quantitative. Each species has its specific rate, and it’s unclear about what control that because the genes controlling the clock is highly conserved. So why is the mouse developing at twice the rate as humans?
- People using this for developmental timing.
- Mouse proteins are degraded faster, humans more stable, and this accounts for the differences in timing. But how are these proteins different? Is anything encoded in these genomes? It’s polygenic, and we have some candidate genes.

## 14 June 2022

Battling with bookdown and LaTeX .pdf format. Discovered...

* `documentclass: book` needs to go in `index.Rmd`, and doesn't work in `_output.yml`.

* `bibliography:` needs to go in `index.Rmd`, otherwise it won't appear.

* `biblio-style: apalike` *can't* go in `index.Rmd`, otherwise it'll keep doing footnotes instead.

* `mainfont = "Georgia"` can go in the `bookdown::render_book("book", bookdown::pdf_book())` command, or `index.Rmd`.

* `csl: chicago-fullnote-bibliography.csl` needs to go into `index.Rmd` to create the links in `bs4_book`. It needs to be hashed out to allow APA style in the `pdf_book`. 

Code to render PDF:

```{r, eval = F}
bookdown::render_book("book", bookdown::pdf_book())
```

Code to render PDF with different fonts:

First make the `bookdown::pdf_book:` entry in `_output.yml` first.

Then...

```{r, eval = F}
bookdown::render_book("book")
```

To clean up the references:

```{r, eval = F}
citr::tidy_bib_file(rmd_file = c("book/index.Rmd",
                                 "book/01-Introduction.Rmd",
                                 "book/02-MIKK_genome.Rmd",
                                 "book/03-Pilot.Rmd",
                                 "book/04-MIKK_F2.Rmd",
                                 "book/06-Fst.Rmd",
                                 "book/07-references.Rmd"),
                    messy_bibliography = "book/book.bib",
                    file = "book/tidy_references.bib")
```

Test to understand which commands are creating errors:


```{r, eval = F}
bookdown::render_book("book",
                      bookdown::pdf_book(pandoc_args = "--listings",
                                         latex_engine = "xelatex",
                                         biblio_style = "apalike",
                                         csl = "chicago-fullnote-bibliography.csl",
                                         includes = rmarkdown::includes(in_header = "preamble.tex"),
                                         documentclass = "book",
                                         sansfont = "Georgia",
                                         monofont = "Andale Mono",
                                         highlight = "pygments"))


```

`citation_package = "natbib"` throws an ugly error, and ends up removing all references in the document.

Weirdly, fonts only change if they go in `index.Rmd`.

## `bs4_book`

```{r, eval = F}
bookdown::render_book("book",
                      bookdown::bs4_book(css = "style.css",
                                         theme = list("primary" = "#52002E"),
                                         repo = list("base" = "https://github.com/brettellebi/PhD-thesis",
                                                                                         "branch" = "master", "subdir" = "book"),
                                         includes = rmarkdown::includes(in_header = "css.html"),
                                         footnotes_inline = T,
                                         bibliography = "book.bib"))
```



## 1 June 2022

Meeting with EB re: Chapter 2 draft:

* Inbreeding. Explain phenotype distributions. Run heritability analysis yourself.

* Nucleotide diversity – start with a para of the question. “An open question is…” One concern is inbreeding would select for domestication phenotypes. 

* ABBABABA – starting with neanderthal in humans. Explain what it is. Confirmed Northern and Southern are different species. Definition is “does it happen a lot in the wild”? *Allopatry*. Ideally we have better sampling of northern and Korean to get a better idea. Very low probability of reproduction in the wild, probably due to ecology and behavioural phenotypes. Tie in to other material. Give the default expectation due to what we think is going on due to previous work, etc. Northern Japanese are physically very close, but Japanese Alps. Whereas Korea has a sea between it. Make it explicit. Spivakov did find no interbreeding, but he didn’t have so many genomes..”

* LD decay. “What can we expect when we do genetic mapping?”

* SVs: ONT: Want to show to your examiners that you understand what’s going on. Take people through why long reads are good for SVs. We always know detecting deletions is much easier than detecting insertions with reference-based systems.

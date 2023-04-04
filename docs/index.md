---
title: |
  Japanese courage: a genetic analysis of complex traits in medaka fish and humans
author: "Ian Narain Brettell"
date: "6 October 2022"
site: bookdown::bookdown_site
# url: your book url like https://bookdown.org/yihui/bookdown
# cover-image: path to the social sharing image like images/cover.jpg
description: |
  Thesis for the award of Doctor of Philosophy from EMBL-EBI and the University of Cambridge.
documentclass: book
bibliography: [book.bib, packages.bib]
#csl: chicago-fullnote-bibliography.csl
mainfont: Libre Baskerville
geometry: "left=4cm, right=3cm, top=2.5cm, bottom=2.5cm"
header-includes:
# With guidance from https://tex.stackexchange.com/questions/148438/putting-two-images-beside-each-other
  - \usepackage{titling}
#  - \usepackage{subfig}
  - \usepackage{subcaption}
  - \pretitle{\begin{center}
    \includegraphics[width=2in,height=2in]{/Users/brettell/Documents/Repositories/PhD-thesis/book/figs/title/Arms_PembrokeCollege_Cambridge.pdf}\LARGE\\
    \bigskip
    \bigskip
    \bigskip
    }
  - \posttitle{\end{center}}
  - \predate{\begin{center}
    Pembroke College \\
    \bigskip
    }
  - \postdate{\end{center}
      \begin{center}
      \bigskip
      \bigskip
      \bigskip
      This thesis is submitted for the degree of Doctor of Philosophy.
      \end{center}
      \centering
      \begin{figure}[!tpb]
      \centering
      \begin{subfigure}{0.49 \linewidth}
        \centering
        \vfill
        \includegraphics[height=0.45in]{/Users/brettell/Documents/Repositories/PhD-thesis/book/figs/title/cambridge_university2.pdf}
      \end{subfigure} \hfill
      \begin{subfigure}{0.49 \linewidth}
        \centering
        \includegraphics[height=0.55in]{/Users/brettell/Documents/Repositories/PhD-thesis/book/figs/title/EMBL_EBI_Logo_black.pdf}
      \end{subfigure}
      \end{figure}
    }
  - \cleardoublepage
---


```{=latex}
% Trigger ToC creation in LaTeX
\cleardoublepage
```

# Declaration {-}

This thesis is the result of my own work and includes nothing which is the outcome of work done in collaboration except as declared in the Preface and specified in the text. 

I further state that no substantial part of my thesis has already been submitted, or, is being concurrently submitted for any such degree, diploma or other qualification at the University of Cambridge or any other University or similar institution except as declared in the Preface and specified in the text. 

It does not exceed the prescribed word limit for the relevant Degree Committee.


# Abstract {-}

## Japanese courage: a genetic analysis of complex traits in medaka fish and humans {.unlisted .unnumbered}

### Ian Brettell {.unlisted .unnumbered}

This thesis primarily explores how an individual's genes interact with the genes of their social companions to create differences in behaviour, using the Japanese medaka fish as a model organism. Chapter 1 sets out the introduction to the diverse topics covered in this thesis, and is followed by five substantive chapters.

Chapter 2 describes several genomic characteristics of the Medaka Inbred Kiyosu-Karlsruhe (MIKK) panel, which comprises 80 inbred lines of medaka that were bred from a wild population from the city of Kiyosu, southern Japan. In this chapter I plot the inbreeding trajectory of the MIKK panel and analyse a number of genomic characteristics relevant to its utility for the genetic mapping of complex traits, including: the panel's evolutionary relationship with other previously-established inbred medaka strains; the degree of homozygosity in the inbred lines; the rate of linkage disequilibrium decay across the panel; and the genomic repeats and structural variation present in their genomes.

In Chapter 3, I use a custom behavioural assay to characterise and classify bold-shy behaviours in 5 previously-established inbred medaka strains. I describe the assay, assess its robustness against confounding factors, and apply a hidden markov model (HMM) to classify the fishes' behaviours across a spectrum of boldness-shyness based on the individuals' distance and angle of travel between pre-defined time intervals. I describe how the strains differ in their behaviours over the course of the assay (a "direct genetic effect") and how the behaviour of a single "reference" strain (*iCab*) differs in the presence of different strains (an "indirect genetic effect").

In Chapter 4, I describe the bioinformatic processes and genetic association models that I used to map the variants associated with variation in the period of somite development, based on an F~2~-cross between the southern Japanese *iCab* strain, and the northern Japanese *Kaga* strain. 

In Chapter 5, I explain how I ran the custom behavioural assay described in Chapter 3 over the MIKK panel to identify lines that diverge in both their own bold-shy behaviours (the direct genetic effect) and the extent to which they transmit those behaviours onto their tank partners (the indirect genetic effect). I then describe how I used those divergent lines as the parental lines in a multi-way F~2~-cross to identify the genetic variants associated with both direct and indirect genetic effects.

Finally, in Chapter 6, I turn to humans to compare and rank all complex traits in the GWAS Catalog based on the extent to which their associated alleles vary across global populations, using the Fixation Index ($F_{ST}$) as a metric, and the 1000 Genomes dataset as a sample of global genetic variation. I set out the bioinformatic pipelines used to process the data, present the distributions of $F_{ST}$ for trait-associated alleles across the genome, and use the Kolmogorov-Smirnov test to compare the distributions of $F_{ST}$ across different traits.

Altogether, this thesis describes some of the genomic characteristics of both medaka fish and humans, and how those variations relate to differences in complex traits, with a particular focus on the genetic causes of adaptive behaviours and the transmission of those behaviours onto one's social companions.


# Acknowledgements {-}

I owe much to those who have guided me through this incredible life.

To my grandparents, U.N. and Shanta, who helped raise me and continue to offer wisdom, inspiration, and laughs (in varying proportions). And to my dear Granny, Bizz, I wish you were still here.

To my dad, Richard, who instilled in us such strong values without ever imposing them, and set up the template for my scientific trajectory. Your love for nature and the quirky side of life has been infectious. Thank you for proof-reading this thesis, and picking up on inaccuracies like how Mendel's F~1~ generation was actually self-pollinated rather than inter-crossed! And to my mum, Rina, who has given me so much support and encouragement, and her partner Wayne for making great jokes and reminding me never to take things too seriously.

To my siblings, Rohan and Vanessa, it's been incredible to see you both develop into such beautiful, strong people. 

To my friends -- too many to name here, but you know who you are -- you're the *best* and I love you. A special thanks to the Pembroke crew (David, Annika, Emilie, Boris, Max, Katharina, Karen, Campbell, Ali and Luke) for making my (limited) time here an absolute blast, and Emilie and Luke -- let's keep our Pembroke Genome Project going virtually.

To John and Jenny, thank you for everything you've done for me.

To my gorgeous and brilliant fiancée Charlotte, thank you for your faith, love and edits. I look forward to continuing on our beautiful journey together. And to Charlotte's family, I feel so lucky to know you.

To the staff of Pembroke College, you've made it feel like home. 

To the wider network at EMBL and EBI, I'm so grateful to have been a part of the International PhD program. The funding, resources, and introductory course were all fantastic, and I never wanted for anything.

To the Birney Research Group and our wider set of collaborators, it's been wonderful working with you, and I'm excited to see all the amazing science (or whatever else) you'll do throughout your careers. A special thank you to Tom Fitzgerald for your constant and reassuring presence. 

To my Thesis Advisory Committee -- Virginie Uhlmann, Cornelius Gross, and Anne Ferguson-Smith -- thank you for your sage guidance throughout this process.

And finally, to the big dog himself, Ewan Birney -- you've been the best supervisor I could have hoped for. Extraordinarily generous and infinitely knowledgeable (at least from where I'm standing), you're an inspiration and a delight. Thank you. 



# Preface {-}

This thesis is the result of my own work and includes nothing which is the outcome of work done in collaboration except as declared in the preface and specified in the text.

It is not substantially the same as any work that has already been submitted before for any degree or other qualification except as declared in the preface and specified in the text.

It does not exceed the prescribed word limit for the Degree Committee for the Faculty of Biology.

```{=latex}
% Trigger ToC creation in LaTeX
\tableofcontents
```



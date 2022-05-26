---
zotero: ["PhD"]
bibliography: book.bib
---

# Genomic variations in the MIKK panel

This project was carried out in collaboration with Felix Loosli's group at the Karlsruhe Institute of Technology (KIT), and Jochen Wittbrodt's group in the Centre for Organismal Studies (COS) at the University of Heidelberg.

This chapter will set out my contributions to the the following pair of papers published in *Genome Biology*:

-   @fitzgerald2022

-   @leger2022

## Genomic characterisation of the Medaka Inbred Karlsruhe-Kiyosu (MIKK) panel

### Assessing the inbreeding trajectory of the MIKK panel

The Medaka Inbred Kiyosu-Karlsruhe (MIKK) panel was bred from a wild population of medaka found in the Kiyosu area near Toyohashi, Aichi Prefecture, in southern Japan. @spivakov2014 From this wild population, the Loosli Group at KIT set up random crosses of single mating pairs to create 115 'founder families'. For each founder family, they then set up between two and five single full-sibling-pair inbreeding crosses, which resulted in 253 F1 lines. Lines derived from the same founder family are referred to as 'sibling lines'. Over the course of the next eight generations of inbreeding, they used only one mating pair per line. I generated Fig. \@ref(fig:InbreedingFigure)A and B from the inbreeding data provided by the Loosli Group. Fig. \@ref(fig:InbreedingFigure)A shows the number of lines that survived over the course of the first 14 generations of the inbreeding program, and the various causes for the termination of other lines. Fig. \@ref(fig:InbreedingFigure)B shows the average fecundity levels of the surviving lines at generation F16. In addition, the Birney Group at EMBL-EBI generated morphometric data for the MIKK panel lines to demonstrate the distribution of physical phenotypes across the MIKK panel. I used this data on relative eye diameters to generate Fig. \@ref(fig:InbreedingFigure)C.

(ref:InbreedingFigure) Inbreeding,fecundity and eye size in the MIKK panel lines. **A**: Status of all MIKK panel lines during the first 14 generations of inbreeding, showing cause of death for non-extant lines. **B**: Average fecundity of MIKK panel lines in generation F16, as measured during peak egg production in July 2020. **C**: Distribution of mean relative eye size for female and male medaka across all MIKK panel lines.

<div class="figure">
<img src="figs/mikk_genome/20211213_final_figure.png" alt="(ref:InbreedingFigure)" width="100%" />
<p class="caption">(\#fig:InbreedingFigure)(ref:InbreedingFigure)</p>
</div>

### Introgression with northern Japanese and Korean medaka populations

To explore the evolutionary history of the MIKK panel's founding population, we sought to determine whether there was evidence of introgression between that southern Japanese population, and northern Japanese and Korean medaka populations. [Refer to background on northern medaka speciating away from southern medaka.] To this end, I used the 50-fish multiple alignment from Ensembl release 102 to obtain the aligned genome sequences for the established medaka inbred lines HdrR (southern Japan), HNI (northern Japan), and HSOK (Korea), as well as the most recent common ancestor of all three strains.[(2)](https://www.zotero.org/google-docs/?RA3Ett) I then carried out an ABBA BABA analysis to calculate a modified 'admixture proportion' statistic fd [(3)](https://www.zotero.org/google-docs/?9loUI7) as a measure of the proportion of shared genome in 500-kb sliding windows between the MIKK panel and either iCab, HNI, or HSOK (**Fig. 2**).

(ref:ABBABABA) **Figure 2**: ABBA-BABA analysis. **A**. Phylogenetic tree generated from the Ensembl release 102 50-fish multiple alignment, showing only the medaka lines used in the ABBA-BABA analysis. B. Schema of the comparisons carried out in the ABBA-BABA analysis. C. Circos plot comparing introgression (fd ) between the MIKK panel and either iCab (yellow), HNI (orange), or HSOK (purple), calculated within 500-kb sliding windows using a minimum of 250 SNPs per window.

<div class="figure">
<img src="figs/mikk_genome/07_introgression.png" alt="(ref:ABBABABA)" width="100%" />
<p class="caption">(\#fig:ABBABABA)(ref:ABBABABA)</p>
</div>

Based on the genome-wide mean $\hat{f}_d$, the MIKK panel shares approximately 25% of its genome with iCab, 9% with HNI, and 12% with HSOK. These results provide evidence that the MIKK panel's originating population has more recently introgressed with medaka from Korea than with medaka from northern Japan. This supports the findings in @spivakov2014, where the authors found little evidence of significant interbreeding between southern and northern Japanese medaka since the populations diverged.

### Nucleotide diversity

As an additional means of assessing genetic diversity in the MIKK panel, I calculated nucleotide diversity (π) within 500-kb non-overlapping windows across the genome of 63 of the 80 MIKK panel lines (having excluded one line from each pair of sibling lines), and compared this to the nucleotide diversity in 7 wild medaka from the same Kiyosu population from which the MIKK panel was derived. Mean and median nucleotide diversity in both the MIKK panel and wild Kiyosu medaka were close to 0, and slightly higher in the MIKK panel (mean : MIKK = 0.0038, wild = 0.0037; median : MIKK = 0.0033, wild = 0.0031). The patterns of varying nucleotide diversity across the genome are shared between the MIKK panel and wild Kiyosu medaka, where regions with high levels of repeat content tend to have higher nucleotide diversity (r = 0.386, p \< 0.001) \@ref(fig:NucleotideDiversity).

<div class="figure">
<img src="figs/mikk_genome/supp_01_pi_circos.png" alt="(ref:NucleotideDiversity)" width="100%" />
<p class="caption">(\#fig:NucleotideDiversity)(ref:NucleotideDiversity)</p>
</div>

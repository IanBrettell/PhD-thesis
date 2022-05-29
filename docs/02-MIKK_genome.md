---
zotero: ["PhD"]
bibliography: book.bib
---

# Genomic variations in the MIKK panel {#MIKK-genomes-chap}

This project was carried out in collaboration with Felix Loosli's group at the Karlsruhe Institute of Technology (KIT), and Jochen Wittbrodt's group in the Centre for Organismal Studies (COS) at the University of Heidelberg.

This chapter sets out my contributions to the the following pair of papers published in the journal *Genome Biology*, on both of which I am joint-first author:

-   @fitzgerald2022

-   @leger2022

## The Medaka Inbred Kiyosu-Karlruhe (MIKK) panel

Biological traits are the product of an interaction between an organism’s genes and its environment, often described as the relationship between "nature and nurture".[@plominNatureNurtureGenetic2005] This is especially true for complex traits such as behaviour, which I explore in Chapters \@ref(Pilot-chap) and \@ref(MIKK-F2-chap).

It is unfeasible to explore this relationship between genes and environment experimentally in humans due to the inability to sufficiently manipulate either set of variables. Researchers accordingly resort to using model organisms, with which it is possible to control for both. The genetics of model organisms may be controlled to a degree by establishing inbred strains through the repeated mating of siblings over multiple generations. Eventually, as the individuals within each line inherit the same same haplotype from their related parents, they become almost genetically identical to one another, with the added benefit that their genotypes can be replicated over time in subsequent generations. Panels of inbred strains exist for several model organisms including thale cress (*Arabidopsis thaliana*) , fruit fly (*Drosophila melanogaster*) [@mackayChartingGenotypePhenotype2018], and mouse (*Mus musculus*) [@saulHighDiversityMousePopulations2019].

Although the mouse is an appropriate model for humans due to their orthologous mammalian organ systems and cell types, inbred strains of this organism descend from individuals that had already been domesticated, and therefore do not represent the genetic variation present in wild populations. Furthermore, the large panels of inbred mice such as the Collaborative Cross (CC), Diversity Outcross (DO) and B6-by-D2 (BXD) are derived from only a small number of individuals. As gene-environment studies seek to ultimately understand their effects on traits "in the wild" (such as with humans), there is accordingly a need for a panel of inbred vertebrates that represents the genetic variation present in natural populations.

The medaka fish (*Oryzias latipes*) has been studied as a model organism in Japan for over a century,[@wittbrodtMedakaModelOrganism2002] and is gaining recognition elsewhere as a powerful genetic model for vertebrates.[@spivakovGenomicPhenotypicCharacterization2014] In addition to possessing a number of desirable traits that are characteristic of model organisms (including their small-size, short reproduction time, and high fertility), medaka are also – uniquely among vertebrates – resilient to inbreeding from the wild. This special trait allows one to produce inbred strains with relative ease. 

Since 2010, the Birney Group at EMBL-EBI, in collaboration with the Wittbrodt Group at COS, University of Heidelberg and the Loosli Group at the Karlsruhe Institute of Technology (KIT), have been working to establish the world’s first panel of vertebrate inbred strains – now known as the Medaka Inbred Kiyosu-Karlsruhe Panel (**MIKK panel**). The MIKK Panel was bred from a wild population caught near Kiyosu in Southern Japan, and now comprises 80 inbred, near-isogenic "lines".[@fitzgeraldMedakaInbredKiyosuKarlsruhe2022] 

The MIKK Panel was created to map genetic variants associated with quantitative traits at a high resolution, and to explore the interactions between those variants and any environmental variables of interest. The purpose of these papers was to introduce the MIKK panel to the scientific world, and describe the genetic characteristics of the MIKK panel that make it a favourable resource for other researchers who wish to explore gene-environment interactions.


## Genomic characterisation of the MIKK panel

### The MIKK panel DNA sequence dataset {#non-sib-calls}

The MIKK Illumina callset contained SNP and INDEL calls for 79 of the 80 extant MIKK panel lines. In order to avoid allele frequency biases introduced by the 16 pairs/triplets of "sibling lines", I removed each pair’s arbitrarily labelled second sibling line from the variant call set, leaving 63 MIKK panel lines for this analysis (**MIKK non-sibling calls**), and used only those calls for the analyses in Chapters \@ref(nuc-div) and \@ref(ld-decay-sec).

### Assessing the inbreeding trajectory of the MIKK panel

The Medaka Inbred Kiyosu-Karlsruhe (MIKK) panel was bred from a wild population of medaka found in the Kiyosu area near Toyohashi, Aichi Prefecture, in southern Japan.[@spivakov2014] From this wild population, the Loosli Group at KIT set up random crosses of single mating pairs to create 115 'founder families'. For each founder family, they then set up between two and five single full-sibling-pair inbreeding crosses, which resulted in 253 F1 lines. Lines derived from the same founder family are referred to as 'sibling lines'. Over the course of the next eight generations of inbreeding, they used only one mating pair per line. I generated Fig. \@ref(fig:InbreedingFigure)A and B from the inbreeding data provided by the Loosli Group. Fig. \@ref(fig:InbreedingFigure)A shows the number of lines that survived over the course of the first 14 generations of the inbreeding program, and the various causes for the termination of other lines. Fig. \@ref(fig:InbreedingFigure)B shows the average fecundity levels of the surviving lines at generation F16. In addition, the Birney Group at EMBL-EBI generated morphometric data for the MIKK panel lines to demonstrate the distribution of physical phenotypes across the MIKK panel. I used this data on relative eye diameters to generate Fig. \@ref(fig:InbreedingFigure)C.

(ref:InbreedingFigure) Inbreeding,fecundity and eye size in the MIKK panel lines. **A**: Status of all MIKK panel lines during the first 14 generations of inbreeding, showing cause of death for non-extant lines. **B**: Average fecundity of MIKK panel lines in generation F16, as measured during peak egg production in July 2020. **C**: Distribution of mean relative eye size for female and male medaka across all MIKK panel lines.

<div class="figure">
<img src="figs/mikk_genome/20211213_final_figure.png" alt="(ref:InbreedingFigure)" width="100%" />
<p class="caption">(\#fig:InbreedingFigure)(ref:InbreedingFigure)</p>
</div>

### Introgression with northern Japanese and Korean medaka populations

To explore the evolutionary history of the MIKK panel's founding population, we sought to determine whether there was evidence of introgression between that southern Japanese population, and northern Japanese and Korean medaka populations. [Refer to background on northern medaka speciating away from southern medaka.] To this end, I used the 50-fish multiple alignment from Ensembl release 102 to obtain the aligned genome sequences for the established medaka inbred lines *HdrR* (southern Japan), *HNI* (northern Japan), and *HSOK* (Korea), as well as the most recent common ancestor of all three strains.[@IndexPubRelease102] I then carried out an ABBA BABA analysis to calculate a modified 'admixture proportion' statistic $\hat{f}_d$[@martinEvaluatingUseABBA2015] as a measure of the proportion of shared genome in 500-kb sliding windows between the MIKK panel and either *iCab*, *HNI*, or *HSOK* (\@ref(fig:ABBABABA).

(ref:ABBABABA) **Figure 2**: ABBA-BABA analysis. **A**. Phylogenetic tree generated from the Ensembl release 102 50-fish multiple alignment, showing only the medaka lines used in the ABBA-BABA analysis. **B**. Schema of the comparisons carried out in the ABBA-BABA analysis. **C**. Circos plot comparing introgression ($\hat{f}_d$) between the MIKK panel and either *iCab* (yellow), *HNI* (orange), or *HSOK* (purple), calculated within 500-kb sliding windows using a minimum of 250 SNPs per window.

<div class="figure">
<img src="figs/mikk_genome/07_introgression.png" alt="(ref:ABBABABA)" width="100%" />
<p class="caption">(\#fig:ABBABABA)(ref:ABBABABA)</p>
</div>

Based on the genome-wide mean $\hat{f}_d$, the MIKK panel shares approximately 25% of its genome with *iCab*, 9% with *HNI*, and 12% with *HSOK*. These results provide evidence that the MIKK panel's originating population has more recently introgressed with medaka from Korea than with medaka from northern Japan. This supports the findings in @spivakov2014, where the authors found little evidence of significant interbreeding between southern and northern Japanese medaka since the populations diverged.

### Nucleotide diversity {#nuc-div}

As an additional means of assessing genetic diversity in the MIKK panel, I calculated nucleotide diversity ($\pi$) within 500-kb non-overlapping windows across the genome of 63 of the 80 MIKK panel lines (having excluded one line from each pair of sibling lines), and compared this to the nucleotide diversity in 7 wild medaka from the same Kiyosu population from which the MIKK panel was derived. Mean and median nucleotide diversity in both the MIKK panel and wild Kiyosu medaka were close to 0, and slightly higher in the MIKK panel (mean: MIKK = 0.0038, wild = 0.0037; median: MIKK = 0.0033, wild = 0.0031). The patterns of varying nucleotide diversity across the genome are shared between the MIKK panel and wild Kiyosu medaka, where regions with high levels of repeat content tend to have higher nucleotide diversity (r = 0.386, p \< 0.001) (\@ref(fig:NucleotideDiversity)).

(ref:NucleotideDiversity) Circos plot with nucleotide diversity ($\pi$) calculated within 500-kb non-overlapping windows for 63 non-sibling lines from the MIKK panel (*green*) and 7 wild Kiyosu medaka samples from the same originating population (*purple*); proportion of sequence classified as repeats by RepeatMasker (*blue*); and mean mapping quality (*pink*).

<div class="figure">
<img src="figs/mikk_genome/supp_01_pi_circos.png" alt="(ref:NucleotideDiversity)" width="100%" />
<p class="caption">(\#fig:NucleotideDiversity)(ref:NucleotideDiversity)</p>
</div>

The higher level of $\hat{\pi}$ observed within specific regions on several chromosomes -- such as chromosomes 2, 11, and 18 -- correspond closely to the regions we identified as containing large (>250 kb) inversions that appear to be shared across at least some of the MIKK panel (Fig. \@ref(fig:SVInvs)). These regions are also enriched for large deletions and duplications.[@leger2022] Inversions cause permanent heterozygosity [@hoffmannChromosomalInversionPolymorphisms2004], and duplications and deletions may have increased the density of called SNPs in these regions [@fredmanComplexSNPrelatedSequence2004], so the observed depressions in homozygosity at these loci may be the result of such large structural variants that are present in the MIKK panel's genomes.

(ref:SVInvs) Inversions identified in 9 MIKK panel lines using a combination of Oxford Nanopore Technologies long-read and Illumina short-read sequences (see Chapter \@ref(mikksv-sec) below).

<div class="figure">
<img src="figs/mikk_genome/20210224_sv_invs_lines.png" alt="(ref:SVInvs)" width="100%" />
<p class="caption">(\#fig:SVInvs)(ref:SVInvs)</p>
</div>

### LD decay {#ld-decay-sec}

I analysed the MIKK panel's allele frequency distribution and linkage disequilibrium (LD) structure to assess their likely effects on genetic mapping. To remove allele-frequency biases introduced by the presence of sibling lines in the MIKK panel, I used only the MIKK non-sibling calls (see Chapter \@ref(non-sib-calls)). 

To assess how accurately one may be able to map genetic variants using the MIKK panel relative to a human dataset, I compared the MIKK panel’s minor allele frequency (MAF) distribution and LD structure against that of the 2504 humans in the 1KG Phase 3 release.[@GlobalReferenceHuman2015] To prepare the "1KG calls", we first downloaded the VCFs for each autosome from the project’s FTP site (ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/release/20130502/), then merged them into a single VCF using GATK.[@mckennaGenomeAnalysisToolkit2010]

I then used PLINK[@changSecondgenerationPLINKRising2015; @purcellPLINK] to calculate the minor allele frequencies for all non-missing, biallelic SNPs in both the MIKK non-sibling and IKG calls (*N* SNPs = 16,395,558 and 81,042,381 respectively), and then used R[@rcoreteamLanguageEnvironmentStatistical2021] and the *tidyverse* suite of R packages[@wickhamWelcomeTidyverse2019] to produce Fig. \@ref(fig:LDdecay). To visualize the MIKK panel’s LD structure, I first used PLINK to filter the MIKK non-sibling calls for non-missing, biallelic SNPs with MAF ≥ 0.10, leaving 2,968,786 SNPs. I then used PLINK to take a random sample of 3000 SNPs per chromosome and recode them for analysis in Haploview.[@barrettHaploviewAnalysisVisualization2005] We used Haploview to generate LD plots covering the length of each of the 24 chromosomes in the default color scheme, showing $r^2$ values for each pair of SNPs within 1 Mb of each other. 

To determine the rate of LD decay in the MIKK panel and compare it to that in the 1KG sample, for both the MIKK non-sibling calls and the 1KG calls, we used PLINK to compute r2 on each autosome for all pairs of non-missing, biallelic SNPs with MAF > 0.10 within 10 kb of one another (for 1KG and the MIKK panel respectively ~ 5.5M and ~ 3M SNPs, with a total number of pairwise r2 observations of 204,152,922 and 146,785,673). I then used R and the tidyverse suite of R packages to group the $r^2$ observations for each pair of SNPs based on their distance from one another into non-overlapping bins of 100 bp in length, then calculated the mean $r^2$ in each of those bins and generated the plots in Fig. \@ref(fig:LDdecay) using the mean $r^2$ and left boundary of each bin. All code used for this section can be found here: https://birneylab.github.io/MIKK_genome_main_paper/02_LD_decay.html.[@MIKKPanelGenome2021]

Fig. \@ref(fig:LDdecay) compares the allele frequency distribution for the 16.4M biallelic SNPs identified in those filtered calls, with the allele frequency distribution of the 81M biallelic SNPs in the 1000 Genomes Project Phase 3 release (N = 2,504) (**1KG**) in human. As expected, the 1KG and MIKK panel calls are similarly enriched for low-frequency variants, albeit to a lesser extent in the MIKK panel, which is likely due to its smaller sample size.

(ref:LDdecay) Linkage disequilibrium on chr 17, and LD decay in the MIKK panel and 1000 Genomes human dataset. **A**: Minor allele frequency distributions and LD decay for biallelic, non-missing SNPs in the 1000 Genomes Phase 3 variant calls (N = 2,504) (1KG), and the MIKK panel Illumina-based calls excluding one of each pair of sibling lines (N = 63), across all autosomes (1KG: chrs 1-22; MIKK: chrs 1-24); Density of allele frequencies in the 1KG and MIKK panel calls. **B**: LD decay for each autosome, calculated by taking the mean r2 of pairs of SNPs with MAF \> 0.1 within non-overlapping 100 bp windows of distance from one another, up to a maximum of 10 kb. **Inset**: mean r2 within 100 bp windows, up to a maximum of 1 kb. LD decays faster on chromosome 2 for the MIKK panel due to its higher recombination rate, consistent with the genetic linkage map described in (6). B: Heatmap showing the genotypes of 63 non-sibling MIKK panel lines across the region of high LD on chr17. **C**: Figure generated by Haploview[@barrettHaploviewAnalysisVisualization2005] of a large region on chr17 with high LD.

<div class="figure">
<img src="figs/mikk_genome/08_ld_decay.png" alt="(ref:LDdecay)" width="100%" />
<p class="caption">(\#fig:LDdecay)(ref:LDdecay)</p>
</div>

To review the MIKK panel's LD structure, for each autosome in humans (chromosomes 1-22) and each chromosome in medaka (chromosomes 1-24), we calculated $r^2$ between all pairs of biallelic SNPs with a minor allele frequency (MAF) greater than 0.10, within 10 kb of one another [elaborate from Methods]. 

We then grouped the paired SNPs by distance from one another into non-overlapping 100 bp windows, and calculated the mean $r^2$ for each window in order to represent how LD decays with distance between loci. Fig *\@ref(fig:LDdecay)B* compares the LD decay between the 1KG and MIKK panel SNPs. Based on the 1KG calls under these parameters, LD decays in humans to a mean $r^2$ of around 0.2-0.35 at a distance of 10 kb, whereas the MIKK panel reaches this level within 1 kb, with a mean $r^2$ of 0.3-0.4 at a distance of \~100 bp. This implies that when a causal variant is present in at least two lines in the MIKK panel, one may be able to map causal variants at a higher resolution than in humans. We note that LD decays faster in chromosome 2 of the MIKK panel relative to the other chromosomes. This suggests that it has a much higher recombination rate, which is consistent with the linkage map described in [(6)](https://www.zotero.org/google-docs/?6iGiFi) showing a higher genetic distance per Mb for this chromosome. This higher recombination rate in chromosome 2 may in turn be caused by its relatively high proportion of repeat content (**Fig. \@ref(fig:repeats)**).

(ref:repeats-fig) Repeat content in the *HdrR* genome based on RepeatMasker results obtained by Jack Monahan. **A**. Proportion of repeat content per-chromosome. **B**. log10 of repeat lengths and counts per repeat class. "Misc" includes all repeats assigned to their own specific class, for example "(GAG)n" or "(GATCCA)n". **C**.  Circos plot showing repeat length (radial axes) by locus (angular axis) and repeat class (track). 

<div class="figure">
<img src="figs/mikk_genome/20210401_hdrr_repeats_final.png" alt="(ref:repeats-fig)" width="100%" />
<p class="caption">(\#fig:repeats)(ref:repeats-fig)</p>
</div>


## Genomic variations and epigenetic landscape of the MIKK panel {#mikksv-sec}

As an alternative to the variation pangenome approach described in this paper,[@leger2022] I explored structural variation (SVs) in a reference-anchored manner, similar to many human studies. Differences in SVs between panel lines is another important class of genetic variation that could cause or contribute to significant phenotypic differences. Here we used Nanopore sequencing data obtained for 9 of the 12 selected lines allowing us to characterise larger SVs in the MIKK panel and to create a more extensive picture of genomic rearrangements compared to available medaka reference genomes. The Birney Group first called structural variants using only the ONT long reads, producing a set of structural variants classified into five types: deletions (DEL), insertions (INS), translocations (TRA), duplications (DUP) and inversions (INV). I then "polished" the called DEL and INS variants with Illumina short reads to improve their accuracy. The polishing process filtered out 7.4% of DEL and 12.8% of INS variants, and adjusted the breakpoints (i.e. start and end positions) for 75-77% of DEL and INS variants in each sample by a mean of 23 bp for the start position, and 33 bp for the end position. This process produced a total of 143,326 filtered SVs.

The 9 "polished" samples contained a mean per-sample count of approximately 37K DEL variants (12% singletons), 29.5K INS variants (14%), 3.5K TRA variants (9%), 2.5K DUP (7%) and 600 INV (7%) (Fig. 4D). DEL variants were up to 494 kb in length, with 90% of unique DEL variants shorter than 3.8 kb. INS variants were only up to 13.8 kb in length, with 90% of unique INS variants shorter than 2 kb. DUP and INV variants tended to be longer, with a mean length of 19 and 70.5 kb respectively (Fig. 4A). Fig. 4E shows the per-sample distribution of DEL variants across the genome. Most large DEL variants over 250 kb in length were common among the MIKK panel lines. A number of large DEL variants appear to have accumulated within the 0-10 Mb region of chromosome 2, which is enriched for repeats in the HdrR reference genome (Fig. 6A).

SVs were generally enriched in regions covered by repeats. While only 16% of bases in the HdrR reference were classified as repeats (irrespective of strand), those bases overlapped with 72% of DEL, 63% of DUP, 81% of INV and 35% of TRA variant regions. However, repeat bases only overlapped with 21% of INS variants. We also assessed each SV's probability of being loss-of-function (pLI) (39) by calculating the logarithm of odds (LOD) for the pLI scores of all genes overlapping the variant (**Fig. \@ref(fig:SV-main)B,C**). 30,357 out of 134,088 DEL, INS, DUP and INV variants overlapped at least one gene, and 9% of those had a score greater than 10, indicating a high probability that the SV would cause a loss of function. Two INS variants on chr2 had an outlying LOD score of 57 as a result of overlapping medaka gene ENSORLG00000003411, which has a pLI score of 1 -- the highest intolerance to variants causing a loss of function. This gene is homologous with human genes SCN1A, SCN2A and SCN3A, which encode sodium channels and have been associated with neuronal and sleep disorders. We did not find evidence that longer SVs tended to have a higher probability of causing a loss of function (**Fig. \@ref(fig:SV-main)B**).

(ref:SV-cap) Polished SVs in 9 MIKK panel lines sequenced with ONT. DEL: deletion; INS: insertion; TRA: translocation; DUP: duplication; INV: inversion. **A**. Aggregate log10 counts and lengths of distinct SVs by type, excluding TRA. **B**. pLI LOD scores in distinct SVs by SV type. **C**. Histogram of LOD scores by SV type. **D**. Total and singleton counts of SV types per sample. **E**. Circos plot showing per-sample distribution and lengths of DEL variants across the genome.


<div class="figure">
<img src="figs/mikk_genome/20210408_sv_main.png" alt="(ref:SV-cap)" width="100%" />
<p class="caption">(\#fig:SV-main)(ref:SV-cap)</p>
</div>


We compared these polished INS and DEL calls with the high-quality graph-based alternative paths and large-scale deletions, respectively. We found that 2 of the 19 regions covered by graph-based alternative paths, and 4 of the 16 regions covered by graph-based deletions (see section titled *Novel genetic sequences and large-scale insertions and deletions in the MIKK panel* in @leger2022), had no SVs that overlapped those regions at all, which suggests they would have been missed entirely when using a reference-anchored approach alone. 

With the exception of one alternative path on chromosome 20, the alternative paths were not captured by INS variants, which only covered up to 63% of the bases in each region, and in many cases substantially less. On the other hand, for 8 of the 16 graph-based deletions, the DEL variants covered at least 85% of the bases in those regions. The other 8 graph-based deletions were either not at all covered by DEL variants, or only slightly. This indicates that the reference-based approach is better at detecting large-scale deletions than alternative paths ("insertions"), but still misses around half of such variants relative to the graph-based approach.

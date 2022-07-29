# Genetic loci associated with somite development periodicity

## Background

"The distinction between Mendelian loci and QTLs is artificial, as the same mapping techniques can be applied to both. In fact, the classification of genetic (and allelic) effects should be considered as a continuum. At one end of the spectrum is the dichotomous Mendelian trait with only two detectable and distinct phenotypes, which are governed by a single gene. At the other end are traits, such as growth, which are likely to be affected by many genes that each contribute a small portion to the overall phenotype." [@membersofthecomplextraitconsortiumNatureIdentificationQuantitative2003]

Since it became possible to sequence the genotypes of individuals at scale, it has been an ongoing point of debate as to how best to model the effects that genetic variants have on a trait of interest.

Population structure and unequal relatedness among individuals in a given cohort can lead to false discoveries [@ewensTransmissionDisequilibriumTest1995; @membersofthecomplextraitconsortiumNatureIdentificationQuantitative2003]. This is because individuals who share common ancestries will share both variants that do affect the trait of interest, and variants that do not, and these variants will be correlated with one other due to that shared ancestry. Therefore, if an association is found between the causal variants and a trait of interest, the non-causal variants that are correlated with the causal variants will also be found to be statistically associated with the trait.

How then does one control for population structure? 

Three methods were formerly used [@zhangMixedLinearModel2010]: 

1. Structured association [@pritchardInferencePopulationStructure2000]

1. Genomic control [@devlinGenomicControlAssociation1999]

1. Family-based tests of association [@abecasisGeneralTestAssociation2000]

"Ronald fished introduced random effects models to study the correlations of trait values between relatives" [@fisherXVCorrelationRelatives1919].

## Somite development

During the development of an embryo, somites are the earliest primitive segmental structures that form from the presomatic mesoderm (**PSM**) [@kimPeriodSomiteSegmentation2011]. They later differentiate into vertebrae, ribs, and skeletal muscles, thereby establishing the body's anterior-posterior axis. Vertebral number is precisely defined for a given species [@gomezControlSegmentNumber2008], but is the most variable physical trait across species [@kimuraGeneticAnalysisVertebral2012]. For example, frogs have 6-10, humans have 33, and snakes can have more than 300 [@gomezControlSegmentNumber2008; @kimuraGeneticAnalysisVertebral2012]. **Figure \@ref(fig:mouse-embryo)** depicts a number of formed somites in a 9.5-day-old mouse embryo.

The number of vertebrae is determined by the periodicity of somite formation, which occurs rhythmically and sequentially. This periodic somite formation is controlled by a molecular oscillator, known as the 'segmentation clock', which drives periodic waves of gene expression in the NOTCH, FGF, and WNT pathways, forming a signalling gradient that regresses towards the tail in concert with axis elongation [@gomezControlSegmentNumber2008]. Over the course of elongation, the wave period increases (i.e. each somite takes longer to form), and the PSM progressively shrinks until it is exhausted, eventually terminating somite formation [@gomezControlSegmentNumber2008]. 

(ref:mouse-embryo) Image of a mouse embryo at day 9.5 from @gridleyLongShortIt2006, showing somites in darker colours. 

\begin{figure}
\includegraphics[width=1\linewidth]{figs/somites/mouse_embryo_gridley} \caption{(ref:mouse-embryo)}(\#fig:mouse-embryo)
\end{figure}

It is not fully understood how the sychrony and phase waves of the segmentation clock are intially established [@falkImagingOnsetOscillatory2022]. To explore this question, our collaborators Ali Seleit and Alexander Aulehla at EMBL-Heidelberg used a CRISPR-Case9 knock-in approach [@seleitEndogenousProteinTagging2021] to establish a medaka *Cab* strain with an endogenous, fluorescing reporter gene (Her7-Venus) for the oscillation signalling pathway. This method allows them to image somite formation and extract quantitative measures for segmentation clock dynamics. 

In medaka, it is known that the southern Japanese *Cab* strain and the northern Japanese *Kaga* strain have divergent somite periodicity [WHERE?], where *Kaga*'s tends to be faster, and *Cab*'s slower. Accordingly, to identify genetic loci associated with these differences in clock dynamics, they set up an F2 cross experiment using the reporter-carrying *Cab* strain and the *Kaga* strain as the parental F0 strains. They inter-crossed the hybrid F1 generation to create a sample of 622 F2 individuals, imaged the developing embryos of these F2 samples, and used pyBOAT [@schmalAnalysisComplexCircadian2022] to extract the oscillation features during somite development.

(ref:somite-period-ali) Screenshot of somite extension in an F2 individual captured by Ali Seleit during imaging. The blue circle represents the point tracked by pyBOAT over time, generating the quantitative phenotype data on period development used in this study.  

\begin{figure}
\includegraphics[width=0.5\linewidth]{figs/somites/somite_period_ali} \caption{(ref:somite-period-ali)}(\#fig:somite-period-ali)
\end{figure}


## Phenotype {#somite-phenotype}

Figure \@ref(fig:raw-period-data) shows the period data generated by pyBOAT for this study.

## Genetic sequencing data

Our collaborators extracted DNA from the F0, F1, and F2, and sequenced the F0 and F1 samples with the Illumina platform at high coverage (~30x). They sequenced the F2 samples at low coverage (~1x), which would be sufficient to map their genotypes back to the genotypes of their parental strains.

## F0 homozygosity and F1 heterozygosity

Before proceeding to map the F2 sequences to the genotypes of the F0 generation, I first investigated the levels of homozygosity in the F0 *Cab* and *Kaga* strains, as this would have an effect on the resolution of our genetic mapping. That is to say, for regions where either parent is consistently heterozygous, it would be difficult to determine the parent from which a particular F2 individual derived its chromosomes at that locus. I therefore aligned the high-coverage sequencing data for the F0 *Cab* and *Kaga* lines to the medaka *HdrR* reference (Ensembl release 104, build ASM223467v1) using BWA-MEM2, sorted the aligned .sam files, marked duplicate reads, and merged the paired reads with picard [@Picard2019toolkit], and indexed the .bam files with Samtools [@liSequenceAlignmentMap2009]. 

To call variants, I followed the GATK best practices (to the extent they were applicable) with GATK's HaplotypeCaller and GenotypeGVCFs tools, then merged all calls into a single .vcf file with picard. Finally, I extracted the biallelic calls for *Cab* and *Kaga* with bcftools [@danecekTwelveYearsSAMtools2021], counted the number of SNPs within non-overlapping, 5-kb bins, and calculated the proportion of SNPs that were homozgyous. **Figure \@ref(fig:somite-f0-cab)** is a circos plot generated with circlize [@guCirclizeImplementsEnhances2014]for the *Cab* F0 strain used in this experiment, featuring the proportion of homozygous SNPs per 5-kb bin (green), and the total number of SNPs in each bin (yellow). 

(ref:somite-f0-cab) Proportion of homozygous SNPs within 5 kb bins in the *Cab* F0 generation genome (green), and number of SNPs in each bin (yellow).

\begin{figure}
\includegraphics[width=1\linewidth]{figs/somites/Cab} \caption{(ref:somite-f0-cab)}(\#fig:somite-f0-cab)
\end{figure}

(ref:somite-f0-kaga) Proportion of homozygous SNPs within 5 kb bins in the *Kaga* F0 generation genome (red), and number of SNPs in each bin (yellow).

\begin{figure}
\includegraphics[width=1\linewidth]{figs/somites/Kaga} \caption{(ref:somite-f0-kaga)}(\#fig:somite-f0-kaga)
\end{figure}

To determine whether the low levels of observed homozygosity in Kaga was affected by its alignments to the southern Japanese *HdrR* reference, we also aligned the F0 samples to the northern Japanese *HNI* reference (**Figure \@ref(fig:somite-f0-kaga-hni)**. This did not make differences to the levels of observed homozygosity in either sample, which gave us confidence that the low homozygosity observed in *Kaga* was not driven by reference bias. 

(ref:somite-f0-kaga-hni) Proportion of homozygous SNPs within 5 kb bins in the *Kaga* F0 generation genome when aligned to the *HNI* reference (red), and number of SNPs in each bin (yellow).

\begin{figure}
\includegraphics[width=1\linewidth]{figs/somites/Kaga_HNI} \caption{(ref:somite-f0-kaga-hni)}(\#fig:somite-f0-kaga-hni)
\end{figure}

## F1 homozygosity {#f1-homozygosity}

We next examined the level of heterozygosity in the F1 generation from the *Cab*-*Kaga* cross. 

(ref:somite-f1) Proportion of heterozygous SNPs within 5 kb bins in the *Cab*-*Kaga* F1 cross (brown), and number of SNPs in each bin (yellow).

\begin{figure}
\includegraphics[width=1\linewidth]{figs/somites/F1} \caption{(ref:somite-f1)}(\#fig:somite-f1)
\end{figure}

For the purpose of mapping the F2 sample sequences to the genomes of their parental strains, we selected only biallelic SNPs that were homozygous-divergent in the F0 generation (i.e. homozygous reference allele in *Cab* and homozygous alternative allele in *Kaga* or vice versa) *and* heterozygous in the F1 generation. 

The number of SNPs that met these criteria per chromosome are set out in **Figure \@ref(fig:snp-counts-per-chrom)**. 

(ref:snp-counts-per-chrom) Number of SNPs per chromosome that were homozygous-divergent in the F0 *Cab* and *Kaga* generations, and heterozygous in the F1 generation.

\begin{figure}
\includegraphics[width=1\linewidth]{figs/somites/snp_counts_per_chrom} \caption{(ref:snp-counts-per-chrom)}(\#fig:snp-counts-per-chrom)
\end{figure}

## F2 genotyping

To maximise the efficiency of our sequencing runs, we "shallow-sequenced" the F2 generation with the short-read Illumina platform at a depth of ~1x. We then aligned these sequences to the *HdrR* reference with BWA-MEM2, sorted the reads and marked duplicates with Picard, then indexed the resulting BAM files with samtools. Genotyping these shallow sequences with the same method as used for the high-coverage sequences for the F0 and F1 generation would be inappropriate. We therefore used a different method whereby we used *bam-readcount* to count the reads that supported either the *Cab* or the *Kaga* allele for all SNPs that met the criteria described above in section \@ref(f1-homozygosity), summed the read counts within 5 kb blocks, and calculated the frequency of reads within each bin that supported the *Kaga* allele. This generated a value for each bin between 0 and 1, where 0 signified that all reads within that bin supported the *Cab* allele, and 1 signified that all reads within that bin supported the *Kaga* allele. Bins containing no reads were imputed with a value of 0.5. 

We then used these values for all F2 individuals as the input to a Hidden Markov Model (HMM) with the software package *hmmlearn*, which we applied to classify each bin as one of three states, with state 0 corresponding to homozygous-*Cab*, 1 corresponding to heterozygous, and 2 corresponding to homozygous-*Kaga*. 
Across each chromosome of every sample, the output of the HMM was expected to produce a sequence of states. Based on previous biological knowledge that crossover events occur on average once per chromosome [CITE], I expected to observe the same state persisting for long stretches of the chromosome, only changing to another state between 0 and 3 times, and rarely more. 

**Figure @\ref(fig:hmm-standard)** shows how adjusting the HMM parameters changed the called genotypes for 10 F2 samples on chromosome 18. Allowing the HMM to train itself for the transition probabilities and emission variances, the HMM produced an apparently noisy output (**Figure @\ref(fig:hmm-standard)A**). Fixing the transition probabilities to make it very likely for a state to transition 

(ref:hmm-standard) HMM states called for each bin across chr18 for 10 F2 samples. States 0, 1, and 2 correspond to homozygous *Cab*, heterozygous, and homozygous *Kaga*. Each point represents a 5-kb bin. Y-axis is the proportion of reads within each bin that align to the *Kaga* allele. X-axis is the bp location of the start of each bin. **A**: Standard HMM with all model parameters trained on the data. **B**. HMM with fixed transition probabilities of 0→0/1→1/2→2 = 0.999, 0→1/2→1 = 0.00066, 0→2/2→0 = 0.000333, 1→0/1→2 = 0.0005. **C**-**F** retain those transition probabilities but with different fixed emission variances of 0.01 (**C**), 0.33 (**D**), 0.8 (**E**), and 1 (**F**). 

\begin{figure}
\includegraphics[width=1\linewidth]{figs/somites/scatter_collage} \caption{(ref:hmm-standard)}(\#fig:hmm-scatter-diagnoses)
\end{figure}

I used these genotype-block calls to generate the recombination karyoplots shown in Figures \@ref(fig:karyo-wi-missing) and \@ref(fig:karyo-no-missing). 

\begin{figure}
\includegraphics[width=1\linewidth]{figs/somites/karyoplot_wi_missing} \caption{(ref:karyo-wi-missing)}(\#fig:karyo-wi-missing)
\end{figure}


\begin{figure}
\includegraphics[width=1\linewidth]{figs/somites/karyoplot_no_missing} \caption{(ref:karyo-no-missing)}(\#fig:karyo-no-missing)
\end{figure}

**Figure \@ref(fig:prop-sites-total)** shows the proportion of 5-kb bins called as either homozygous-*Cab*, heterozygous, or homozygous-*Kaga* within each F2 sample (points). The ordinary expectation for the ratios would be 0.25, 0.5, and 0.25 respectively. However, we observe a skew towards homozygous-*Cab* and away from homozygous *Kaga*. This may have been caused by the low homozygosity observed in *Kaga*. 

(ref:prop-sites-total) Proportions of 5-kb blocks called as either homozygous-*Cab*, heterozygous, or homozygous-*Kaga*.

\begin{figure}
\includegraphics[width=1\linewidth]{figs/somites/prop_sites_total} \caption{(ref:prop-sites-total)}(\#fig:prop-sites-total)
\end{figure}

## Genome-wide linkage anlaysis

Finally, I used the called recombination blocks as pseudo-SNPs in a genetic linkage analysis. To detect associations between the pseudo-SNPs and the three phenotypes of interest, I used a mixed linear model (**MLM**) as implemented in GCTA [@yangGCTAToolGenomewide2011]. That paper describes the model as follows:

$$
\textbf{y} = \textbf{X}\beta + \textbf{Wu} + \epsilon \\
var(\textbf{y}) = \textbf{V} = \textbf{WW}'\sigma^2_{u} + \textbf{I}\sigma_{\epsilon}^2
$$
Where $\textbf{y}$ is a $n$ x 1 vector of phenotypes with $n$ being the sample size, $\textbf{W}$ is a standardised genotype matrix, $\textbf{u}$ is a vector of SNP effects, and $\epsilon$ is a vector of residual effects. I additionally used the leave-one-chromosome-out implementation of GCTA's MLM, with excludes the chromosome on which the candidate SNP is located when calculating the GRM. 

As described above in \@ref(somite-phenotype), the microscope used to image the embryos (either DB or AU) differed by several degrees in heat, which likely caused differences in the measurements observed. We accordingly experimented with including microscope as a covariate, either alone or together with the genotype for the reporter locus (either homozygous or heterozygous), or excluding it altogether. In an attempt to avoid complications resulting from its inclusion, we also tried inverse-normalising the period phenotype within each microscope group, transforming the phenotype to fit a normal distribution across both microscopes. 

To set the significance threshold, we permuted the phenotype across samples using 10 different random seeds, together with all covariates when included, and ran a separate linkage model for each permutation. We then set the lowest $p$-value from all 10 permutation as the significance threshold for the non-permuted model. We additionally applied a Bonferroni correction to our $p$-values by dividing $\alpha$ (0.05) by the number of pseudo-SNPs in the model, and set this as a secondary threshold. 

### Period intercept

Figure \@ref(fig:somite-manhattan) is a Manhattan plot of the genetic linkage results for the period intercept phenotype, inverse-normalised across microscopes.

(ref:somite-manhattan) Manhattan plot of the genetic linkage results for the period intercept phenotype, inverse-normalised across microscopes. Pseudo-SNPs with $p$-values lower than the permutation significance threshold are highlighted in red.

\begin{figure}
\includegraphics[width=1\linewidth]{figs/somites/manhattan_intercept} \caption{(ref:somite-manhattan)}(\#fig:somite-manhattan)
\end{figure}

### PSM area

We additionally 

# Variation in the frequency of trait-associated alleles across global human populations {#Fst-chap}

\chaptermark{Human $F_{ST}$ distributions}

In this Chapter, I describe my analysis of the distribution of $F_{ST}$ for trait-associated alleles across diverse human populations, to explore the extent to which different allele frequencies contribute to the poor transferability of PGS to non-European populations. 

## $F_{ST}$ distribution for all SNPs in the human genome

I first sought to explore the distribution of $F_{ST}$ for SNPs across the human genome. As the reference for human genomic variation across diverse populations, I used the New York Genome Center high-coverage, phased .vcf files[@IndexVol1Ftp] for the 2,504 individuals from 26 populations from across the globe, as described in the 1000 Genomes phase 3 release [@10002015global]. I then annotated those .vcf files with human SNP IDs from dbSNP release 9606 [@smigielskiDbSNPDatabaseSingle2000], and calculated $F_{ST}$ for each of the ~69M SNPs in that dataset with PLINK 1.9 [@changSecondgenerationPLINKRising2015; @purcellPLINK]. Figure \@ref(fig:fst-circos) shows the location and $F_{ST}$ value for all SNPs in the 1000 Genomes dataset, and Figure \@ref(fig:fst-histo) shows their distribution across the range of $F_{ST}$ values.

\begin{figure}
\includegraphics[width=1\linewidth]{figs/fst/circos_all_fst} \caption{(ref:fst-circos)}(\#fig:fst-circos)
\end{figure}

\begin{figure}
\includegraphics[width=1\linewidth]{figs/fst/histo_fst_all} \caption{(ref:fst-histo)}(\#fig:fst-histo)
\end{figure}

Figure \@ref(fig:fst-circos) shows that with very few exceptions, $F_{ST}$ remains below 0.6, although specific regions do appear to be differentially selected, as indicated be the peaks on chromosomes 1, 2, and 17. Figure \@ref(fig:fst-histo) makes it clear that the vast majority of SNPs have very low $F_{ST}$, with a genome-wide mean of 0.019. The question then is whether the SNPs that have a detectable effect on traits tend to have higher $F_{ST}$ values -- and therefore greater variation in allele frequencies between populations -- than random SNPs with similar allele frequencies in European populations. If so, this would suggest that variation in allele frequencies might contribute significantly to the non-transferability of PRS scores derived from European-focused GWAS.

## Analysis {#Fst-analysis-chap}

In this analysis I explore the distribution of $F_{ST}$ scores for loci associated with 587 traits, a subset of the GWAS Catalog that passed our criteria for suitable polygenic traits (see section \@ref(Fst-analysis-chap)). Using high-coverage sequence data for 2,504 individuals from the 1000 Genomes Project phase 3 release, for each trait in the GWAS Catalog I calculated the distribution of $F_{ST}$ across all approximately-unlinked SNPs associated with it (**trait SNPs**), and compared these $F_{ST}$ distributions with the $F_{ST}$ distributions of random-selected SNPs that were matched to the trait SNPs by their allele frequencies in European populations (**control SNPs**). 

#### GWAS Catalog

I used the R package *gwasrapidd* [@magnoGwasrapiddPackageQuery2020] to query all traits in the GWAS Catalog [@macarthurNewNHGRIEBICatalog2017] as of 9 August 2021 ($N_{TRAITS}$ = 3,459). For 541 of these traits, no matching variant IDs could be pulled out from the 1000 Genomes VCFs, leaving $N_{TRAITS}$ = 3,008. 

### Linkage disequilibrium

To obtain the "trait SNP" dataset, for each trait, I sought to isolate the SNP closest to each of its true causal variants, and exclude the SNPs in LD with them. To this end, I used PLINK 1.9 [@changSecondgenerationPLINKRising2015; @purcellPLINK] to "clump" the SNPs associated with each of the remaining 3,008 traits, using an "index" SNP p-value threshold of $10^{-8}$ [@panagiotouWhatShouldGenomewide2012], $r^2$ threshold of 0.1 [@hillLinkageDisequilibriumFinite1968], and base window size of 1 Mb. This process revealed 2,045 traits with at least one index SNP that met the p-value threshold. The index SNPs for each trait formed the set of trait SNPs, and **Figure \@ref(fig:FstSnpCount)** shows the counts of unique SNP IDs associated with each trait before and after clumping. In order to target relatively polygenic traits, I further filtered out traits with fewer than 10 trait SNPs, leaving $N_{TRAITS}$ = 587. 

(ref:FstSnpCount) log<sub>10</sub> counts of associated SNPs for each trait before and after the clumping process, which involved: a) excluding all SNPs with a *p*-value greater than $10^{-8}$; and b) starting with the SNPs with the lowest *p*-values ("index" SNPs), excluding all other SNPs within a 1 Mb region of the index SNP with an LD $r^2$ of more than 0.1. [CHANGE COLOUR]

\begin{figure}
\includegraphics[width=1\linewidth]{figs/fst/0.1_1000_20220314_snp_counts} \caption{(ref:FstSnpCount)}(\#fig:FstSnpCount)
\end{figure}

### Control SNPs

To obtain the "control SNP" dataset, I assigned each trait SNP to one of 20 bins based on its minor allele frequency in European populations (as provided in the original 1000 Genomes .vcf files under the column header ‘INFO/AC_EUR’). For example, if a trait SNP had a minor allele frequency of 0.08 in European populations, it was assigned to the $(0.05, 0.1]$ bin. I did the same for all (un-associated) SNPs in the .vcf files, then paired each trait SNP with a random SNP from the .vcf file in the equivalent bin. These allele-frequency-paired random SNPs formed the set of "control SNPs", which I used to infer the $F_{ST}$ distribution of a random set of SNPs with the same allele frequencies as the trait SNPs, and against which I could compare the $F_{ST}$ distribution of the trait SNPs.

### $F_{ST}$ and ranking traits by signed Kolmogorov-Smirnov $D$ statistic

I then calculated $F_{ST}$ for each of the trait SNPs and their matched control SNPs using the Weir and Cockerham method [@weirEstimatingFStatisticsAnalysis1984], as implemented in the R package *pegas* [@paradisPegasPackagePopulation2010]. I then sought to rank all traits based on the directional difference in $F_{ST}$ distributions between trait and control SNPs. The Kolmogorov-Smirnov (KS) test is an appropriate test to measure the differences between distributions [@conoverPracticalNonparametricStatistics1999], but the *p*-values are strongly affected by the number of samples in each distribution (here, the number of loci in each trait), and it does not measure whether one distribution is overall higher or lower than the other distribution. These limitations made it impossible to use the KS test *p*-values to compare the directional distances between trait and control SNPs across traits that have very different numbers of SNPs. I accordingly formulated the following method for ranking the traits based on the directional distance of the $F_{ST}$ distributions of the trait SNPs compared to the control SNPs:

First, I ran three KS tests for each trait $t$ with $x_t$ = $F_{ST, trait SNPs}$ and $y_t$ = $F_{ST, control SNPs}$:

1. two-sided ($D_t$) ; 

1. one-sided "greater" ($D_t^+$) ; and 

1. one-sided "less" ($D_t^-$).

I note that $D_{t} = max(D_t^+, D_t^-)$, where $D_t^+$ is the greatest vertical distance attained by the eCDF of $x_t$ over the eCDF of $y_t$, and $D_t^-$ is the greatest vertical distance attained by the eCDF of $y_t$ over the eCDF of $x_t$ [@conoverPracticalNonparametricStatistics1999; @durbinDistributionTheoryTests1973]. I then used a comparison of $D_t^+$ and $D_t^-$ to formulate a "signed D statistic" ($D_t^S$), based on the logic that trait SNPs with a lower overall $F_{ST}$ than control SNPs tend to have a higher $D$ under the "greater" test than the "less" test, and vice versa. 

Therefore, ${D_t^S}$:

$$
\begin{aligned}
D_t^- > D_t^+ &: &-D_t \\
D_t^- = D_t^+ &: &0 \\
D_t^- < D_t^+ &: &D_t \\
\end{aligned}
$$

In **Figure \@ref(fig:FstMain)** I present the $F_{ST}$ distributions of trait SNPs for an illustrative subset of 28 human traits, ranked by ${D_t^S}$ when compared with their matched control SNPs. **Figure \@ref(fig:FstMain)A** shows the densities of SNPs as a function of $F_{ST}$, and **Figure \@ref(fig:FstMain)B and C** show their empirical Cumulative Distribution Functions (eCDFs). **Figure \@ref(fig:FstMain)B** includes the eCDFs of control SNPs in grey. eCDF figures for all 587 traits that passed our filters (Methods) are provided in the Appendix \@ref(fig:eCDFall).

(ref:FstMain) Distributions of $F_{ST}$ across 28 illustrative human traits, ranked by signed-D (Kolmogorov-Smirnov test) comparing trait and control SNPs. **A**. $F_{ST}$ density ridge plots with SNP markers. **B**. Empirical Cumulative Distribution Functions (eCDFs) of $F_{ST}$ for trait-associated (colour) and random control (grey) SNPs, faceted by trait. **C**. Consolidated eCDFs of trait-associated SNPs from (B). eCDFs for all traits are included in the Appendix.  

\begin{figure}
\includegraphics[width=1\linewidth]{figs/fst/0.1_1000_20220314_final} \caption{(ref:FstMain)}(\#fig:FstMain)
\end{figure}

These results show that for most traits, especially those that are highly polygenic, the $F_{ST}$ of their associated alleles tend to be low, and to differ little from their matched control SNPs. This suggests that the causal variants of polygenic traits are generally shared across global populations at similar frequencies. @wangTheoreticalEmpiricalQuantification2020 determined through simulations that differences in LD and allele frequencies between populations can explain 70-80% of the loss of PGS relative accuracy for traits like body mass index and type 2 diabetes. This builds on the work of others [CITE PAPERS CITED BY BERG AND COOP AND ELABORATE]. As most of these variants have been discovered in European populations, the poor transferability of PGS between populations does not appear to be primarily driven by differences in the allele frequencies of these discovered variants, but perhaps rather by as-yet undiscovered variants of larger effect sizes in non-European populations, as well as differences between these populations in LD structure and environment.

There is a question as to whether the higher distributions of $F_{ST}$ observed for hair shape, eye colour, skin pigmentation, and HIV infection, are due to those variants being discovered in diverse populations, such as those in Africa. For instance, if the alleles were predominantly discovered through GWAS on African populations, which contain an outsized proportion of genetic variation, those alleles would be more likely to show lower frequencies in other populations, and consequently higher $F_{ST}$. To examine the number of individuals from different ancestries that were used in these studies, I generated Figure \@ref(fig:fst-n-indivs). This figure shows that GWAS performed for the more comprehensively-studied phenotypes such as body height, BMI, and educational attainment, included individuals from many diverse populations, whereas the GWAS on pigmentation-related traits tended to focus on European or Latin American populations, as well as those of African ancestry in some cases. As expected, the GWAS on HIV-related traits included a higher proportion of individuals of African ancestry, which may explain the higher levels of $F_{ST}$ observed there. I note that the GWAS Catalog data did not allow me to determine whether different studies on the same trait used the same cohorts (e.g. from UK Biobank), which would have the effect of inflating the counts shown in Figure \@ref(fig:fst-n-indivs).

\begin{figure}
\includegraphics[width=1\linewidth]{figs/fst/20220324_n_individuals} \caption{(ref:fst-n-indivs)}(\#fig:fst-n-indivs)
\end{figure}

## Implications

### Limitation of $F_{ST}$

The first relevant limitation of $F_{ST}$ is that it does not correspond to similarities or differences between populations in trait values. This is because $F_{ST}$ does not take into account the effect size or the direction of effect of the trait-associated allele, so for highly-polygenic traits like the ones shown here, $F_{ST}$ is almost entirely decoupled from the mean additive genetic value between populations [@bergPopulationGeneticSignal2014a]. This means that even when a trait's associated alleles have low $F_{ST}$, as we see for most traits here, it does not follow that the population mean values for that trait would be the same due to genetic similarities between those populations. As @kremerDecouplingDifferentiationTraits2012 determined by through simulations, for highly polygenic traits, mean trait differences are driven by small, coordinated shifts in allele frequencies, which would not be detected by $F_{ST}$ [@lecorreGeneticDifferentiationQuantitative2012].

The second relevant limitation is that $F_{ST}$ is not sufficiently powered to detect selection for polygenic traits [@bergPopulationGeneticSignal2014], which means that these results cannot be used to determine the extent to which alleles are under selection in a given population. This is apparent in our analysis, where in contrast with @racimoDetectingPolygenicAdaptation2018, height and BMI, which have been found to be under strong differential selection, appear similar to other polygenic traits.

### The importance of environment, and a push for diversity in genetic studies

The obvious solution to this issue of non-transferability of PGS scores to diverse populations is to increase the representation of those populations in GWAS and PGS studies, as has been often proposed elsewhere [@martinHumanDemographicHistory2017; @martinCriticalNeedsChallenges2018; @bienFutureGenomicStudies2019; @martinClinicalUseCurrent2019;  @sirugoMissingDiversityHuman2019; @wojcikGeneticAnalysesDiverse2019]. [ELABORATE]

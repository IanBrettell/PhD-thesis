---
zotero: ["PhD"]
bibliography: book.bib
---

# Variation in the frequency of trait-associated alleles across global human populations {#Fst-chap}

## Background {#Fst-background}

Humans have long sought to use genetic information to predict an individual's likely value for a given trait, in our own species and in other organisms (Chapter \@ref(Introduction)). As seen in previous chapters, an individual's phenotypic value at a given point in time is the product of complex interactions between their genome and their environment, beginning from embryonic development and continuing throughout their lifetimes. It is now clear that "complex" traits such as height, intelligence, and behaviour are highly polygenic, meaning that they are genetically influenced by hundreds or thousands of genetic variants, each exerting a small effect in one or the other direction along the trait's spectrum [@sellaThinkingEvolutionComplex2019]. 

A richer understanding of the cumulative effect of genetic variants on any trait allows for the prediction of the value that an individual is most likely to have for that trait. Of all human traits, diseases are particularly salient; in 2018, the global healthcare industry was valued at US\$8 trillion, and predicted to increase to US\$12 trillion by 2022 [@11TrillionGlobal2019]. This strong financial imperative complements the moral imperative to reduce suffering, together driving the question of how to use genetic information to improve human health.

Recent technological developments have made it possible to sequence human genomes at scale, and it is thought that by combining detailed genetic information with with other environmental and phenotypic information (such as lifestyle or clinical factors), clinicians could move towards the practice of "precision medicine", where interventions could be tailored to their patients' unique risk profiles [@wrayPredictionIndividualGenetic2007]. The use of genetic information to predict individuals' values for a trait of interest entails the construction of metrics known as "polygenic scores" (**PGS**). When the trait is a disease, PGS is commonly known as polygenic risk scores (**PRS**), or genetic risk profiling, but I use the term PGS to encompass both disease and non-disease traits.

### Polygenic Scores (PGS) and Genome-Wide Association Studies (GWAS)

#### PGS

PGS using genetic information alone show modest yet reliable accuracy for the prediction of complex traits [@martinClinicalUseCurrent2019]: the correlations between PGS and the trait value as measured by $R^2$ have reached 0.24 for height [@yengoMetaanalysisGenomewideAssociation2018], and 0.12-0.16 for educational attainment [@okbayPolygenicPredictionEducational2022]. PGS also improve predictions beyond non-genetic clinical models for a variety of health-related traits, including breast cancer [@maasBreastCancerRisk2016], prostate cancer [@schumacherAssociationAnalysesMore2018], and type I diabetes [@sharpDevelopmentStandardizationImproved2019]. The predictive accuracy of PGS scores can be further improved by combining genetic information with lifestyle and clinical factors, as seen with cardiovascular disease [@kheraGenomewidePolygenicScores2018; @kulloIncorporatingGeneticRisk2016; @natarajanPolygenicRiskScore2017; @paquettePolygenicRiskScore2017; @tikkanenGeneticRiskPrediction2013; @sunPolygenicRiskScores2021].

#### GWAS

PGS are calculated for an individual by summing trait-associated alleles identified by genome-wide association studies (**GWAS**), as weighted by the alleles' effect sizes [@duncanAnalysisPolygenicRisk2019]. GWAS aim to identify genetic variants associated with traits by comparing the allele frequencies of individuals who share similar ancestries, but differ in values for the trait in question [@uffelmannGenomewideAssociationStudies2021]. As of 2021, over 5,700 GWAS have been performed for more than 3,330 traits [@uffelmannGenomewideAssociationStudies2021]. 

However, most GWAS have been performed with individuals of European ancestry, despite only constituting around 16% of the present global population. Although the proportion of participants in GWAS from a non-European background increased from 4% in 2009 to 16% in 2016 [@popejoyGenomicsFailingDiversity2016]), as of 2019, 79% of all GWAS participants recorded in the GWAS Catalog were of European ancestry, and the proportion of non-European individuals has remained the same or reduced since late 2014 [@martinClinicalUseCurrent2019]. This bias extends to PGS studies, where as of 2019, only 67% of them included only participants of European ancestry, with another 19% including only East Asian ancestry participants, and only 3.8% with cohorts of African, Hispanic, or Indigenous ancestry [@duncanAnalysisPolygenicRisk2019]. 

It is therefore unsurprising that PGS scores are far better at predicting disease risk in individuals of European ancestry than in those of non-European ancestry [@martinHumanDemographicHistory2017; @martinClinicalUseCurrent2019]. Indeed, the predictive accuracy of PGS scores decays with genetic divergence of the GWAS "independent" or "test" sample, from the  "discovery" or "training" sample, as established in both humans [@martinHumanDemographicHistory2017; @martinClinicalUseCurrent2019], and livestock [@clarkImportanceInformationRelatives2012; @habierImpactGeneticRelationship2010; @pszczolaReliabilityDirectGenomic2012]. 

Compared to PGS scores for those of European ancestry, PGS scores across multiple traits are ~64-78% less accurate for individuals of African ancestry, [@duncanAnalysisPolygenicRisk2019; @martinClinicalUseCurrent2019], ~50% less accurate for individuals of East-Asian ancestry, and ~37% less accurate for individuals of South-Asian ancestry [@martinClinicalUseCurrent2019].

### Contributors to PGS non-transferability

What explains this disparity in predictive value? A number of factors may be responsible, including:

1. The failure of GWAS to identify causal variants that either do not exist or are not identifiable within the "discovery" sample, for both technological and methodological reasons [@martinClinicalUseCurrent2019];

1. The sample populations may differ in linkage disequilibrium (**LD**) -- the correlation structure of the genome -- which would change the estimated effect sizes of the causal variants, even when the causal variants themselves are the same [@martinClinicalUseCurrent2019];

1. Allele frequencies of the causal variants, and the distribution of the effect sizes of the causal variants, may differ between populations [@martinHumanDemographicHistory2017; @scutariUsingGeneticDistance2016]; and

1. The environments and demographies of populations tend to differ. Such differences are often correlated with genetic divergence due to geography, making it difficult to determine whether the associations are driven by the differences between population in their genetics, or their environments [@martinClinicalUseCurrent2019; @kerminenGeographicVariationBias2019]. 

The first three factors can degrade predictive performance even in the absence of biological and environmental differences. On the other hand, environmental and demographic differences can drive forces of natural selection can in turn drive differences in causal genetic architecture [@martinClinicalUseCurrent2019]. 

I will discuss each of these factors in turn before addressing point (3) in this analysis. 

#### Technological and methodological limitations of GWAS {#fst-discovery-sec}

The power to discover a causal variant through GWAS depends on the variant's effect size and frequency in the study population [@martinClinicalUseCurrent2019; @shamPowerLinkageAssociation2000]. That is to say, the stronger the variant's effect, or the more common it is, the more likely it is to be discovered. Rare variants tend to have stronger effect sizes [@watanabeGlobalOverviewPleiotropy2019], likely due to purifying selection [@parkDistributionAlleleFrequencies2011], and tend not to be shared across populations [@gravel2011demographic; @10002015global]. This is particularly relevant for African populations, as they have a much greater level of genetic variance than other populations due to the human species having originated on that continent [@10002015global]. Therefore, if GWAS aren't performed on diverse populations, PGS can't take into account the rare variants present in non-European populations that are likely to exert stronger effects on the trait of interest. There are also several other issues that can affect the discoverability of causal variants through GWAS, including the technology used for genotyping, the selection of the cohort, and the necessary exclusion of genotypic outliers. 

With respect to genotyping technologies, GWAS often use data from SNP microarrays. These do not sequence the whole genome, but rather a selection (from several hundred thousand to millions) of genetic markers intended to present *common* genetic variation [@porcuGenotypeImputationGenomeWide2013], which accordingly tend to neglect rare genetic variants [@uffelmannGenomewideAssociationStudies2021]. To increase the density of genotypes, which would increase the likelihood of refining the association signal and identifying causal variants, researchers often "impute" variants that aren't sequenced directly [@porcuGenotypeImputationGenomeWide2013]. The imputation process involves "phasing" the study genotypes onto the genotypes of a "reference panel" [@mccarthyReferencePanel642016]. However, if the reference panel does not sufficiently represent the population in the study sample, they are likely to miss or incorrectly impute those genotypes [@martinClinicalUseCurrent2019]. Again, this is particularly problematic for African populations. 

The lack of representation of rare variants in SNP microarrays can be overcome by using next-generation sequencing technologies such as whole-genome sequencing (**WGS**) and whole-exome sequencing (**WES**). (The former seeks to sequence the full genome, and the latter of only targets the coding regions of the genome.) These methods are more expensive than SNP microarrays, which hinders their widespread use at scale, and although their costs are continuing to decrease rapidly, there is a question as to whether they return a proportionate benefit in all use cases [@schwarzeAreWholeexomeWholegenome2018]. 

A second limitation is the selection of GWAS cohorts, which can introduce selection and collider biases [@uffelmannGenomewideAssociationStudies2021]. For instance, the UK Biobank, which contains genetic and phenotypic data on 500,000  participants who volunteered for inclusion between 2006 and 2010, tend to be older, female, healthier, and wealthier than non-participants [@fryComparisonSociodemographicHealthRelated2017]. This creaties the possibility of confounding genetic associations with environmental factors, which I discuss further in \@ref(fst-env-sec) below.

A third limitation is the "quality control" step that is required during the GWAS process [@uffelmannGenomewideAssociationStudies2021]. To avoid confounding from population stratification, which can lead to overestimated heritability and biased PGS, GWAS cohorts are filtered to include only those with similar ancestries -- or relative genetic homogeneity -- by clustering individuals through principal component analysis (**PCA**) of their genotypes, and excluding outliers. I elaborate on the issue of population stratification in section \@ref(fst-env-sec) below, but at present, a statistical model for GWAS that can include cohorts with diverse ancestries without the risk of serious confounding is yet to be developed [@bergReducedSignalPolygenic2019].

#### Differences in LD

Because GWAS SNP markers are often not the causal variants themselves, but merely in physical proximity to them, the estimated effect size of a SNP marker depends on the extent to which it is in LD with the causal variant [@mostafaviVariablePredictionAccuracy2020; @pritchardLinkageDisequilibriumHumans2001]. To illustrate the problem, if a SNP has an LD $r^2$ with a causal variant of 0.8 in the discovery population and 0.6 in the target population, it would explain 25% = (1 - 0.6/0.8) less trait variation in the target population, and would therefore be less predictive [@wangTheoreticalEmpiricalQuantification2020]. 

These differences in effect-size estimates may typically be small for most regions of the genome, but as PGS sum across all such effects, they aggregate these population differences [@martinClinicalUseCurrent2019; @bergReducedSignalPolygenic2019]. Previous empirical and simulation studies have shown that accuracy of PGS scores decay with increased genetic differentiation ($F_{ST}$ -- described below in \@ref(Fst-descr)) and LD differences between populations [@habierImpactGeneticRelationship2010; @pszczolaReliabilityDirectGenomic2012; @scutariUsingGeneticDistance2016; @wangTheoreticalEmpiricalQuantification2020]. The issue may be addressed to a degree by using LD information from an external reference panel as a prior to infer the posterior mean effect size of a genetic variant -- @vilhjalmsson2015modeling demonstrated through simulations that this could improve PGS predictive accuracy. Yet the most appropriate means of deal with differences between populations in LD remains an active area of research [@duncanAnalysisPolygenicRisk2019].

#### Differences in allele frequencies

Causal variants can differ in both frequency and effect size between different ancestry groups, e.g. for lactase persistence [@segurelEvolutionLactasePersistence2017a], or skin pigmentation [@adhikariGWASLatinAmericans2019]. If a causal allele is rare in the GWAS discovery population, even if it is discovered (see \@ref(fst-discovery-sec)), it is likely to have noisy effect size estimates, and therefore likely to inaccurately estimate its effect size in a different population where it exists at a higher frequency.

Differences in allele frequencies between populations can arise through random genetic drift, or be driven by selective pressures towards the trait optima for a given environment [@harpakEvolutionGroupDifferences2021]. However, evolutionary biologists have found that differences between populations in the mean values for traits tend to occur through small, coordinated shifts in their allele frequencies [@bergReducedSignalPolygenic2019; @edgeReconstructingHistoryPolygenic2019]. In Chapter \@ref(Fst-chap), I explore the differences in allele frequencies across populations for all polygenic traits in the GWAS Catalog, and confirm that with few exceptions -- including skin pigmentation, and HIV viral load -- the differences in allele frequencies between populations tends to be small.

#### Differences in environment {#fst-env-sec}

Genes continuously interact with each other (GxG, or "epistasis" [@grosEvolutionEpistasisIts2009]), the genes of one's parents ("genetic nurture", @kongNatureNurtureEffects2018) or social companions ("social genetic effects") [@domingueSocialGenomeFriends2018; @baudGeneticVariationSocial2017],^[As also explored in Chapters \@ref(Pilot-chap) and \@ref(MIKK-F2-chap)] and the wider non-genetic environment (GxE).

The respective contributions of genetics and environment to traits with social value -- such as intelligence -- is highly contentious, especially when there are apparent differences between populations in the mean values for those traits. PGS measure the proportion of variance within a population that is explained by genetics. Because PRS summarises a *proportion* of the total variance, when studying a population that is subject to greater environmental variation, the variance attributable to genetic factors will proportionately reduce. The corollary being that when studying a population where the environment is held constant, the proportion of variance for that trait that is explained by genetic factors will approach 1. Therefore, increases in the amount of environmental variance that a population is exposed to will reduce the accuracy of PGS predictions when applied to that population. 

Different environments are also often correlated with population structure [@bergReducedSignalPolygenic2019]. For example, in East Asia, there is a greater proportion of individuals of East-Asian ancestry than there is of European ancestry, and *vice versa* in Europe. Those East-Asian individuals will therefore tend to share more of their genetic background with each other than with Europeans, and that population structure will be correlated with the different environments that exist in East Asia compared to Europe. This makes it difficult to determine whether it is the differences in their environments or the differences in their genetics that is driving the discrepancies between the mean values for traits between those populations. These complexities are unlikely to be resolved in the near future, which makes it attractive to turn to model organisms to address more basic biological questions regarding GxE in relation to complex traits [@anderssonDomesticanimalGenomicsDeciphering2004], as we have done with respect to behaviour in Chapters \@ref(Pilot-chap) and \@ref(MIKK-F2-chap).

### $F_{ST}$ {#Fst-descr}

The widely-used fixation index ($F_{ST}$) was introduced independently by Sewall Wright [@wrightGeneticalStructurePopulations1949] and Gustave Malécot [@malecotMathematiquesHeredite1948] as a metric for measuring the genetic diversity between populations.^[In Wright's notation, $F$ refers to "fixation" of an allele, and $_{ST}$ refers to "subpopulations within the total population".] It quantifies the relative variance in allele frequency between groups compared to within groups, reflecting the combined effects of genetic drift, migration, mutation, and selection [@holsingerGeneticsGeographicallyStructured2009]. The metric ranges from 0 to 1, where loci with high $F_{ST}$ values -- that is, loci with a large relative between-group variance in allele frequencies -- may have been subject to selection or different demographic processes [@holsingerGeneticsGeographicallyStructured2009]. The metric has customarily been used to identify regions of the genome have been subject to diversifying selection [@akeyInterrogatingHighDensitySNP2002; @guoBayesianHierarchicalModel2009; @weirMeasuresHumanPopulation2005].

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

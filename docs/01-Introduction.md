



<!--

[STRUCTURE SHOULD START WITH G AND E GO INTO P. THAT'S WHAT GWAS USES. THEN INTRODUCE SOCIAL GENETIC EFFECTS. THEN ADD THE FAMILY ONE. BUILD FROM SIMPLE TO MORE COMPLEX. EXPLAIN THE TECHNIQUES AT THE SAME TIME. IN A HUMAN SITUATION IS GETS EVEN MORE COMPLICATED, THEN PUT INTO THE APPENDIX.]

-->

# Introduction {#Introduction}

Humankind has long sought to understand the basis of biological variation. What gives rise to the wondrous variety of life forms on Earth? Why do individuals of a particular species differ from one another? How do children inherit traits that are similar to those of their parents, yet on the whole remain distinct from both their parents and their siblings? Are the traits we care about -- our health, our intelligence, our behaviour, our ability to thrive in a changing world -- pre-determined from birth, or continuously pliable throughout our lives? And in particular, as social creatures, to what extent does our social environment affect these outcomes? Such questions fundamentally concern the natural laws of inheritance, which have become better elucidated since the field of genetics was founded in the early 20^th^ century, but still remain very uncertain. Rapidly-improving technologies are making these inquiries increasingly tractable, yet the interplay between genes and environment are still the subject of controversy, especially in relation to human traits such as intelligence.

In this thesis, I primarily explore the extent to which phenotypic variation is determined by an individual's own genes, and how much it is mediated by the genes of one's social companions. As a model for these dynamics, I focus on the phenotype of bold-type behaviours in the Japanese rice paddy fish medaka (*Oryzias latipes*). In this introduction I first provide a brief history of the field of genetics, describing some of the work of the scientists on whose shoulders this research stands, from Charles Darwin's theory of evolution, Mendel's identification of the units of inheritance, and the study of continuous variation by Francis Galton, Karl Pearson, Ronald Fisher, and others, while also touching on their other, darker legacies. I then outline the traditional animal crossing methods and modern DNA sequencing and statistical techniques that I have used to parse the respective contributions of genes and environment to variation in complex (polygenic) traits, and introduce the developmental and behavioural phenotypes that I study in medaka. Finally, I provide some background to the issue of the non-portability of human polygenic scores to diverse populations, which I explore in the final chapter of this thesis.

## A brief history of genetics

Much of this section has been informed by @mukherjeeGeneIntimateHistory2016, @rutherfordHowArgueRacist2020, and @taberyStruggleUnderstandInteraction2014. Where possible, I have cited the original sources. 

### Ancient Greece

Throughout ancient history, the sources of biological variation were completely unknown. With limited technologies available to them, the Ancient Greek philosophers proposed theories for the inheritance of traits that they observed in humans. Around 500 BC, Pythagoras applied his knowledge of triangles to the question of how traits are inherited from one's parents. He proposed the theory known as "spermism", positing that hereditary information was passed down from parent to child via male sperm, with the female providing the nutrients that would allow it to grow. Like the theorem that bears his name, he supposed that these two sides of the "triangle" would determine the length of the third side: the characteristics of the child. Over a century later, in 380 BC, Plato extended this metaphor in *The Republic* [@platoPlatoRepublic2013] to argue that this principle could be applied to perfect humanity by breeding the ideal combinations of parents at perfect times, which is possibly the first recorded expression of eugenic intent.

Aristotle later joined the discussion with his treatise *Generation of Animals* [@aristotleGenerationAnimals2021], where he noted that children inherited features from their mothers as well as their fathers, raising cases where human skin colour and other traits from maternal ancestors could skip generations, and thus sperm could not be the only vessel of hereditary information. He suggested an idea of "movement" -- the transmission of information -- from the father's sperm, which sculpts the mother's menstrual blood in the same way a carpenter carves a piece of wood. It was, however, impossible at this time for Aristotle to deduce the form in which the information was conveyed.

### Middle Ages

From the Middle Ages through to the 1800s, the prevailing theory of heredity was that a tiny human -- a homunculus -- sat within the sperm, waiting to be inflated upon its introduction to a woman's uterus. But from where did each previous homunculus originate? Logically, the theory would require each homunculus to hold within it another homunculus, *ad infinitum*. This theory deceived the inventor of the microscope, Nicolaas Hartsoeker, into thinking he observed a homunculus in a sperm he was studying (**Figure \@ref(fig:homunculus-pic)**) [@hartsoekerEssayDioptrique1694], yet posed a fundamental question: what triggered the expansion of the human form, causing the embryo to develop new parts on its road to becoming a foetus? The answer could only have been some instruction or code, but any specifics remained out of reach.

(ref:homunculus-pic) Preformation, drawn by Nicolaas Hartsoeker in 1695. Image adapted from @homunculusImage.

\begin{figure}

{\centering \includegraphics[width=0.5\linewidth]{figs/introduction/homunculus} 

}

\caption{(ref:homunculus-pic)}(\#fig:homunculus-pic)
\end{figure}

### Charles Darwin

During the early 1800s, the prevailing doctrine on the origins of biological variation was Creationism, based on Christianity's literal interpretation of the Bible's Book of Genesis [@campbellKingJamesBible2010]. Any mechanistic description of how species -- and individuals within the same species -- differed from one another was thought to threaten this doctrine, making inquiries of this kind potentially blasphemous, and therefore dangerous [@armstrongEnglishParsonnaturalistCompanionship2000]. 

It was in this context that a 22-year-old Englishman named Charles Darwin (**Figure \@ref(fig:charles-darwin-young-portrait)**) boarded the *HMS Beagle* in 1831 to commence a voyage around the world that would last for almost five years [@darwinAutobiographyCharlesDarwin2019]. Darwin had previously studied theology at the University of Cambridge, but was drawn to study the natural world. He had apprenticed with his fellow clergyman John Henslow, a botanist and geologist who curated the Cambridge Botanic Garden [@iselyOneHundredOne2002]. Henslow suggested that Darwin join the *Beagle*'s exploratory survey of South America as the "gentleman scientist" they were seeking to assist with the collection of specimens [@henslowLetter1051831]. 

(ref:charles-darwin-young-portrait) Portrait of Charles Darwin from the late 1830s by George Richmond [@charlesDarwinYoung].

\begin{figure}

{\centering \includegraphics[width=0.7\linewidth]{figs/introduction/Charles_Darwin_by_G._Richmond} 

}

\caption{(ref:charles-darwin-young-portrait)}(\#fig:charles-darwin-young-portrait)
\end{figure}

After rounding Cape Horn and moving northward along the western coast of South America, the *HMS Beagle* eventually reached the Galápagos Islands off the coast of Ecuador, an archipelago of 18 islands formed from volcanic lava [@darwinCharlesDarwinLetters1998]. Over the course of five weeks, Darwin collected carcasses of birds, lizards, and plants. Upon his return to England, he was hailed as a minor celebrity among natural historians due to the collections of specimens he had gathered and shipped back. John Gould -- the ornithologist who lent his (wife's) name to the Gouldian finch (**Figure \@ref(fig:gouldian-finch)**) -- told him that the various birds that Darwin thought were a variety of wrens, warblers, blackbirds, and "gros-beaks" were in fact 13 different species of finches.

(ref:gouldian-finch) The Gouldian Finch, an Australian native bird described by British ornithological artist John Gould in 1844 and named after his deceased wife Elizabeth [@bancroftPartIntroductionGouldian2016]. Photograph by Sarah R. Pryke, published in @prykeRedDominatesBlack2006.

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figs/introduction/gouldian_finch} 

}

\caption{(ref:gouldian-finch)}(\#fig:gouldian-finch)
\end{figure}

Each island had produced its own variant (**Figure \@ref(fig:darwin-finches)**), and this caused Darwin to consider whether they had all arisen from a common ancestral finch, branching off like the boughs of a tree over time. As he wrote in the second edition of his account of his voyage [@darwinJournalResearchesNatural1845]:

>*Seeing this gradation and diversity of structure in one small, intimately related group of birds, one might really fancy that from an original paucity of birds in this archipelago, one species had been taken and modified for different ends.*

He understood that animal breeders took advantage of the natural variation in populations to select for desired traits, but he questioned what force had guided the development of these different varieties of finches in the wild.

(ref:darwin-finches) Illustration of variation in Galapagos finches by John Gould, published in @darwinNaturalistVoyageJournal1882. Image from @darwinFinches.

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figs/introduction/Darwin's_finches_by_Gould} 

}

\caption{(ref:darwin-finches)}(\#fig:darwin-finches)
\end{figure}


Well prior to Darwin's voyage, Thomas Malthus, a curate and amateur economist, had published a paper titled *An Essay on the Principle of Population* [@malthusEssayPrinciplePopulation1798], in which he argued that the human population was in constant struggle with its limited resource pool, which in turn was affected by droughts, floods, epidemics, and diseases. Darwin read the paper and identified this struggle for resources as the force that selected those with the traits that favoured their survival. He continued to gestate these ideas over the period after his return from the voyage in 1836 through to 1858, when he read a draft paper that had been sent to him by the author, Alfred Russel Wallace (**Figure \@ref(fig:alfred-wallace)**) [@marchantAlfredRusselWallace1916].

Like Darwin, Wallace had set off on a voyage to distant lands, and had observed the stunning variation across the Malay Archipelago in populations separated by channels of water [@smithNaturalSelectionIntellectual2010]. And like Darwin, he also derived from Malthus's paper his theory on the basis of this variation. The draft paper he sent to Darwin outlined his theory of evolution and natural selection [@wallaceXVIIILawWhich1855]. In a panic about being "scooped", Darwin sent both papers to his geologist friend Charles Lyell, who advised Darwin to have both papers presented simultaneously at the meeting of the Linnean Society so that they could both be credited for the discovery [@darwinCorrespondenceCharlesDarwin2002]. 

(ref:alfred-wallace) Alfred Russel Wallace, taken around 1895. Image from @alfredWallace1895.

\begin{figure}

{\centering \includegraphics[width=0.5\linewidth]{figs/introduction/Alfred-Russel-Wallace} 

}

\caption{(ref:alfred-wallace)}(\#fig:alfred-wallace)
\end{figure}

The presentation made few waves at the time, but Darwin proceeded to complete his opus, *On the Origin of Species by Means of Natural Selection* [@darwinOriginSpeciesMeans1859], where he provided the famous quote:

>*Thus, from the war of nature, from famine and death, the most exalted object which we are capable of conceiving, namely, the production of the higher animals, directly follows. There is grandeur in this view of life, with its several powers, having been originally breathed into a few forms or into one; and that, whilst this planet has gone cycling on according to the fixed law of gravity, from so simple a beginning endless forms most beautiful and most wonderful have been, and are being, evolved.*

The book was unexpectedly met with enthusiastic reviews [@SaturdayReviewPolitics1859], and sold well [@darwinLifeLettersCharles1887]. Darwin's theory of evolution through natural selection has since stood the test of time, and is now established as the core process by which life on Earth acquires its grand variety of forms. At the time of publication of the *Origin of Species*, however, two crucial questions still remained unanswered: how was the variation within species generated in the first place, and what was the mechanism by which the traits were transmitted to future generations?

### Gregor Mendel

Around the time the *Origin of Species* was published, the prevailing theory of heredity was promoted by the French biologist Jean-Baptiste de Lamarck (**Figure \@ref(fig:lamarck)**). Lamarck's theory posited that traits that were strengthened or weakened by environmental pressures in one generation -- such as a giraffe having to stretch its neck to reach the leaves on a canopy -- were then passed down to subsequent generations as a form of "pre-adaptation" [@strickbergerEvolution1990]. 

(ref:lamarck) Portrait of Jean Baptiste de Lamarck from 1802-1803 by Charles Thévenin [@lamarck1802].

\begin{figure}

{\centering \includegraphics[width=0.5\linewidth]{figs/introduction/Jean-Baptiste_de_Lamarck} 

}

\caption{(ref:lamarck)}(\#fig:lamarck)
\end{figure}

But by extending that logic, if a human had their arm amputated, their children would be born with shortened arms.^[This theory was experimentally tested by the German embryologist August Weismann, who amputated the tails of mice to determine whether the offspring would be born tailless [@schwartzPursuitGene2008]. The offspring were all born with tails intact.] Darwin was convinced that selection instead acted upon *pre-existing* variation in a population, and proposed that that variation was transmitted by hereditary particles he called *gemmules* [@schwartzPursuitGene2008]. During conception, he proposed that the gemmules of each parent were blended like paints [@charlesworthDarwinGenetics2009]. But such blending would result in a monochrome population, preventing the creation of the unique, outlying traits required to drive the variation he observed [@jenkinOriginSpecies1867]. Around this time, Darwin had recorded notes on an obscure paper titled *Experiments in Plant Hybridization* [@mendelVersucheUberPflanzenhybriden1866], but he appeared to have inadvertently skipped the page containing a description of the experiments on pea hybrids performed by an Augustine monk named Gregor Mendel (**Figure \@ref(fig:mendel)**).

(ref:mendel) Portrait of Gregor Mendel from @mendelPhoto.

\begin{figure}

{\centering \includegraphics[width=0.6\linewidth]{figs/introduction/Gregor_Mendel_2} 

}

\caption{(ref:mendel)}(\#fig:mendel)
\end{figure}

Mendel had aspired to become a teacher, but had failed the teacher's exam multiple times, so by 1853 he had returned to the monastery in Brno, Moravia (present day Czech Republic), and planted a crop of peas which he had been breeding for about three years [@henigMonkGardenLost2000]. He had collected 34 strains that bred "true", meaning that the offspring were identical to the parents in seven famous traits [@reeveEncyclopediaGenetics2014]:

1. the texture of the seed (smooth versus wrinkled)

1. the colour of seeds (yellow versus green)

1. the colour of the flower (white versus violet)

1. the position of the flower (at the tip of the plant versus the branches)

1. the colour of the pea pod (green versus yellow)

1. the shape of the pea pod (smooth versus crumpled)

1. the height of the plant (tall versus short)

Mendel referred to these alternative versions of a trait as *forms* -- biologists in the 1900s would later refer to them as *alleles*, from the Greek *allos*, referring to different subtypes of the same thing [@mukherjeeGeneIntimateHistory2016]. Mendel produced hybrids of plants with different alleles to determine which allele the consequent offspring would possess. Over the course of eight years (1857-1864), he crossed the true-breeding strains (termed "filial 0", or **F~0~**) to create the hybrid **F~1~** generation, and then allowed them to self-pollinate to create the **F~2~** generation, recording their values for the above traits as he went. He could soon identify patterns in the reams of data he generated:^[Mendel's results were based on around 28,000 plants, 40,000 flowers, and almost 400,000 seeds. He may have been the first to apply this modern data-driven, empirical approach to the biological sciences [@nasmythMagicMeaningMendel2022].] for each of the above 7 traits, the F~1~ generation expressed only a single allele, which he referred to as the *dominant*; the hidden allele he referred to as *recessive* [@henigMonkGardenLost2000]. Curiously, however, in the F~2~ generation the recessive allele reappeared at a ratio of 1:3 [@henigMonkGardenLost2000]. 

From these results, Mendel inferred that the F~1~ hybrids must retain the information from both parents, while only expressing one version of them. Then when the F~1~ generation was inter-crossed to produce the F~2~ generation, the recessive allele would only be expressed when inherited with another recessive allele [@mukherjeeGeneIntimateHistory2016]. In 1865, Mendel presented his paper *Versuche über Pflanzenhybriden* (Experiments on Plant Hybridization) to a group of farmers, botanists and biologists at the Natural Science Society in Brno, and it was later published in the annual journal *Proceedings of the Brno Natural Science Society* [@mendelVersucheUberPflanzenhybriden1866]. He mailed out 40 copies of the paper to various scientific societies, but it was only cited four times between 1866 and 1900, and virtually disappeared from scientific literature [@dunnShortHistoryGenetics1991]. 

In 1900, a Dutch botanist named Hugo de Vries chanced upon Mendel's paper while working on plant hybrids [@sandlerConceptualAmbiguityThat1985]. Likely driven by self-interest in being credited for the discovery, he proceeded to publish his own findings without mentioning the work of Mendel [@larsonEvolutionRemarkableHistory2004]. He noted a patch of Evening Primroses (*Oenothera lamarckiana*) which spontaneously generated variants [@schwartzPursuitGene2008],^[An ironic twist given the plant was named after Lamarck.] and he termed these variants *mutants* [@vriesMutationTheory19091909]. It became clear to de Vries that variation in populations arose spontaneously, at random, rather than in the Lamarckian mode of contemporaneous reaction to environmental pressures. De Vries's paper was read by Carl Correns, a botanist in Tübingen, Germany, who had also come across the work of Mendel, and pressured de Vries into acknowledging Mendel's work in the subsequent version of his publication [@rheinbergerMendelianInheritanceGermany2000].

In 1894, the English biologist William Bateson (**Figure \@ref(fig:bateson)**) had published a book titled *Materials for the study of variation* [@batesonMaterialsStudyVariation1894], in which he noted that biological variation occurs continuously for some traits, and dimorphically for others. In 1900, while on a train from Cambridge to London, Bateson read the second version of de Vries's paper, and was immediately struck by the significance of Mendel's original study [@maloneItDoesnTake2002]. He independently confirmed Mendel's findings [@punnettMendelism1905], and began to promote Mendel's work [@cockTreasureYourExceptions2008], including by publishing an English translation of Mendel's original paper [@drueryExperimentsPlantHybridization1901]. In 1905, Bateson coined a word for the study of these units of inheritance: *genetics*, from the Greek *genno*, meaning "to give birth" [@schwartzPursuitGene2008]. A few years later, in 1909, the botanist Wilhelm Johannsen coined a distinct word to denote the unit of inheritance: the *gene* [@wanscherHistoryWilhelmJohannsen1975]. 

(ref:bateson) Portrait of William Bateson from @batesonPhoto.

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figs/introduction/Bateson2} 

}

\caption{(ref:bateson)}(\#fig:bateson)
\end{figure}

Mendel's work has been distilled into what are now called *Mendel's Laws*:^[@marksConstructionMendelLaws2008 offers a fascinating description of how "Mendel's Laws" developed through a series of pedagogical processes, achieving something close to its final form in Thomas Hunt Morgan's *A Critique of the Theory of Evolution* [@morganCritiqueTheoryEvolution1919].]

1. **Segregation**: One allele of each parent is randomly and independently selected, with a probability of 0.5, for transmission to the offspring, and the single alleles from each parent unite randomly to form the offspring's genotype. To illustrate the principle, after having crossed two F~0~ inbred strains that are homozygous for different alleles (denoted as *AA* and *aa*), thus generating the F~1~ hybrid with the genotype *Aa*, the resultant F~2~ individuals from the F~1~ intercross will have a genotypic ratio of 1:2:1 respectively for the genotypes *AA* (homozygous for the first F~0~ parent's allele), *Aa* (heterozygous), and *aa* (homozygous for the second F~0~ parent's allele). If the alleles are dominant/recessive, as was the case for Mendel's pea plant phenotypes, these genotypes would correspond to the 3:1 phenotypic ratio that he observed [@lairdFundamentalsModernStatistical2010].

1. **Independent assortment**: The alleles of separate traits are passed independently of one another, based on Mendel's dihybrid crosses which showed a 9:3:3:1 phenotypic ratio, and a 3:1 phenotypic ratio for each gene. However, it was later discovered that this "law" does not apply to genes that are linked to one another by physical proximity on the chromosome, which I expand upon below in section \@ref(mapping-sec).

### Quantitative genetics: Francis Galton, Karl Pearson, Ronald Fisher and Sewall Wright {#quant-intro}

Francis Galton (**Figure \@ref(fig:galton)**) was the cousin of Charles Darwin, born in the same year as Mendel (1822), and travelled to Egypt and Sudan in 1844, spurring his lifelong obsession with the differences between human races [@simontonOriginsGeniusDarwinian1999]. Driven by a fear the the "unfit" were outbreeding the "fit" [@taberyStruggleUnderstandInteraction2014], Galton's reading of Darwin's *Origin of Species* in 1859 galvanised him to apply this new science to improve the human population through selective breeding [@watsonDNASecretLife2009]. With a view to improving the human stock, he began to explore the measurement and variance of heredity in humans, with an emphasis on height, intelligence, temperament, and physical prowess [@fairbanksRelicsEdenPowerful2009].^[One of Galton's more eccentric activities involved strolling through England and Scotland secretly tabulating beauty by ranking the women he met as "attractive", "indifferent," or "repellent" using pinpricks on a card hidden in his pocket [@mukherjeeGeneIntimateHistory2016].] From @galtonInquiriesHumanFaculty1883:

>*We greatly want a brief word to express the science of improving stock... to give to the more suitable races or strains of blood a better chance of prevailing speedily over the less suitable...* 

For this purpose, he coined the term *eugenics* [@watsonDNASecretLife2009]. It was his vision for a "science which deals with all influences that improve the inborn qualities of race" [@galtonEugenicsItsDefinition1904]:

>*What nature does blindly, slowly and ruthlessly, man may do providently, quickly, and kindly. As it lies within his power, so it becomes his duty to work in that direction.* 

(ref:galton) Portrait of Francis Galton, taken in the 1850s or early 1860s, originally scanned from @pearsonLifeLettersLabours2011 [@galtonPhoto].

\begin{figure}

{\centering \includegraphics[width=0.7\linewidth]{figs/introduction/Francis_Galton_1850s} 

}

\caption{(ref:galton)}(\#fig:galton)
\end{figure}

Through surveys Galton sent out to men and women in the mid-1880s, he requested they mail him detailed measurements on the height, weight, eye colour, intelligence, and artistic abilities of their relatives, in return for a substantial fee. With this data he discovered that tall parents indeed tend to have tall children, albeit on average, and that the distribution of heights within a generation fit the shape of a normal distribution. In a surprising twist, he also discovered that the mean height of the sons of the tallest fathers tended to be slightly lower than the father's height, and closer to the population's average -- a phenomenon he described as *regression to the mean* [@galtonRegressionMediocrityHereditary1886]. 

Having earlier coined the phrase *nature versus nurture* to distinguish between hereditary and environmental influences [@galtonMenScienceTheir1874a], in the 1890s Galton sought to tease out their respective contributions to the traits he deemed important by proposing the first study on human twins. He reasoned that given twins share identical genetic material, they represent a natural experiment where their similarities could be attributed to genes, while any differences were caused by differences in their environments [@taberyStruggleUnderstandInteraction2014].^[These studies, however, were hampered by Galton's failure to distinguish between identical and non-identical twins.]

Galton also proposed an *ancestral law of heredity* [@galtonNaturalInheritance1889] -- whereby parents each contributed half of the content a feature to their offspring, the grandparents a quarter, and so on -- sparking a vociferous debate between Bateson and a cohort of other scientists who sought to reconcile Mendelian inheritance with the continuous variation observed in natural populations [@bartonSewallWrightEvolution2016]. The debate would not be resolved for some time.

In Galton's later years, he adopted the English mathematician Karl Pearson (**Figure \@ref(fig:pearson)**) as his protégé. Like his mentor, Pearson applied his formidable talents to advancing social Darwinism [@karlNationalLifeStandpoint1901a]:

>*My view – and I think it may be called the scientific view of a nation, is that of an organized whole, kept up to a high pitch of internal efficiency by insuring that its numbers are substantially recruited from the better stocks, and kept up to a high pitch of external efficiency by contest, chiefly by way of war with inferior races.* 

From 1893 to 1904, Pearson built upon the work of Galton by developing a number of statistical techniques for biometry including the chi-squared test [@pearsonCriterionThatGiven1900], standard deviation [@pearsonDissectionAsymmetricalFrequency1894], correlation and regression coefficients [@pearsonMathematicalContributionsTheory1898], and the foundations of principal components analysis [@pearsonLIIILinesPlanes1901]. When Galton died in 1911, he bequeathed money to University College London for a Galton Eugenics Professorship, a position that was given to Pearson, who was also the head of the newly established Department of Applied Statistics, the world's first university statistics department [@kevlesNameEugenicsGenetics1995; @hardenGeneticLotteryWhy2021].

To set out some equations relevant to this thesis, Pearson's corrected standard deviation $s$ for a sample is defined as:

\begin{equation}
s = \sqrt{\frac{1}{N-1}{\sum_{i=1} ^n (x_i - \bar{x})^2}} (\#eq:sd)
\end{equation}

And the Pearson correlation coefficient for a sample is defined as:

\begin{equation}
r_{X,Y} = \frac{\mathrm{cov}(X,Y)}{s_X s_Y} (\#eq:cor)
\end{equation}
\begin{equation}
\mathrm{cov} = \sum_{i=1} ^n (x_i - \bar{x})(y_i - \bar{y})
\end{equation}

(ref:pearson) Portrait of Karl Pearson in 1910 [@pearsonPhoto].

\begin{figure}

{\centering \includegraphics[width=0.7\linewidth]{figs/introduction/Karl_Pearson_1910} 

}

\caption{(ref:pearson)}(\#fig:pearson)
\end{figure}

Following in the footsteps of Galton and Pearson, the mathematician Ronald Fisher (**Figure \@ref(fig:fisher)**) of Caius College at the University of Cambridge began to apply his skills to elucidating how continuous traits, like height, could be driven by genetic variation [@reeveEncyclopediaGenetics2001]. In 1918, Fisher published his analysis in a landmark paper titled *The Correlation between Relatives on the Supposition of Mendelian Inheritance* [@fisherXVCorrelationRelatives1918], where he described how the combination of a large number of Mendelian alleles acting on the same trait would result in a normal distribution. This reconciliation between Mendelian inheritance and observed continuous traits was the beginning of what was later referred to by Julian Huxley as the "**modern evolutionary synthesis**" [@huxleyEvolutionModernSynthesis1942; @taberyStruggleUnderstandInteraction2014]. 

(ref:fisher) Portrait of a young Ronald Fisher in 1913 [@fisherPhoto].

\begin{figure}

{\centering \includegraphics[width=0.6\linewidth]{figs/introduction/Youngronaldfisher2} 

}

\caption{(ref:fisher)}(\#fig:fisher)
\end{figure}

In the same paper, Fisher also introduced the concept of *variance* as the square of the standard deviation developed by Galton and Pearson (Equation \@ref(eq:sd) above), and used it to partition the *causes* of variation [@taberyStruggleUnderstandInteraction2014].^[@fisherXVCorrelationRelatives1918: "For stature the coefficient of correlation between brothers is about .54, which we may interpret by saying that 54% of their variance is accounted for by ancestry alone, and that 46% must have some other explanation."] In 1921 he published his first application of this "analysis of variance" (**ANOVA**) [@fisherProbableErrorCoefficient1921], which became widely used following its inclusion in his widely influential book *Statistical Methods for Research Workers* [@fisherStatisticalMethodsResearch1925].

Fisher was also an ardent eugenicist, and his statistical innovations were developed in part to assess the relative importance of nature and nurture for traits like feeble-mindedness [@taberyStruggleUnderstandInteraction2014]. He helped create the Cambridge University Eugenics Society in 1911, hosting meetings in his rooms, organising public lectures by well-known eugenicists, assisting at the First International Eugenics Congress, and delivering his own eugenic lectures. Fisher also helped establish the Society's Committee for Legalising Sterilisation [@mazumdarEugenicsHumanGenetics2005; @taberyStruggleUnderstandInteraction2014]. 

Through the sustained advocacy of scientists led by Galton, Pearson, and Fisher, the concept of eugenics took a firm hold on Western thought [@hawkinsSocialDarwinismEuropean1997], leading to the implementation of eugenics policies in a number of American and European countries including the United States [@barrettGlobalizingSocialMovement2004], Canada [@mclarenOurOwnMaster2015], Sweden [@bjorkmanSellingEugenicsCase2010], and Nazi Germany [@bartovHolocaustOriginsImplementation2015]. From the early 1900s through to the end of World War II, these policies resulted in the forced sterilisation and murder of millions [@bashfordOxfordHandbookHistory2010a]. The eugenics movement was inextricably linked to these horrors, and subsequently fell into decline [@blackWarWeakEugenics2012].

<!--
Fisher later moved to the Rothamsted Agricultural Research Station in Harpenden, where he created many of the statistical methodologies -- such as tests of significance and the design of experiments -- that continue to be used by statisticians today [@taberyStruggleUnderstandInteraction2014].

^[With Winifred A. Mackenzie, Fisher studied the response of 12 different potato varieties to different manure-based fertilizer treatments, where they set up a plot of two treatments (treatment/no treatment), with three replicate plots within each treatment, and three rows within each replicate plots with different manure treatments (either manure, manure + potassium sulfate, or manure + potassium chloride) [@fisherStudiesCropVariation1923]. From this data Fisher generated the first ANOVA table, listing the various causes of variation along with their respective contribution to total variation in crop yield [@taberyStruggleUnderstandInteraction2014].]
-->

Prior to the war, around the time Fisher was working on his 1919 paper, the American geneticist Sewall Wright (**Figure \@ref(fig:wright)**) was using his work on guinea pigs to reconcile Mendelian inheritance with continuous variation [@wrightGeneticalTheoryNatural1930]. He developed a mathematical theory of inbreeding, eventually introducing the inbreeding coefficient $F$ as the correlation between uniting gametes in 1922 [@wrightCoefficientsInbreedingRelationship1922]. Over the course of an esteemed career, together with Fisher and John B. S. Haldane, he advanced the modern evolutionary synthesis [@provineOriginsTheoreticalPopulation2001; @taberyStruggleUnderstandInteraction2014], and founded the field of population genetics with his papers on mating systems [@wrightIsolationDistanceDiverse1946] and genetic drift [@wrightRolesDirectedRandom1948]. 

With particular relevance to this thesis, the widely-used fixation index ($F_{ST}$) was introduced independently by Wright [@wrightGeneticalStructurePopulations1949] and Gustave Malécot [@malecotMathematiquesHeredite1948] as a metric for measuring the genetic diversity between populations. In Wright's notation, $F$ refers to "fixation" of an allele, and $_{ST}$ refers to "subpopulations within the total population". $F_{ST}$ quantifies the relative variance in allele frequency between groups compared to within groups, reflecting the combined effects of genetic drift, migration, mutation, and selection [@holsingerGeneticsGeographicallyStructured2009]. The metric ranges from 0 to 1, where loci with high $F_{ST}$ values -- that is, loci with a large relative between-group variance in allele frequencies -- may have been subject to selection or different demographic processes [@holsingerGeneticsGeographicallyStructured2009]. The metric has customarily been used to identify regions of the genome have been subject to diversifying selection [@akeyInterrogatingHighDensitySNP2002; @guoBayesianHierarchicalModel2009; @weirMeasuresHumanPopulation2005]. In Chapter \@ref(Fst-chap), I use this metric to compare the allele frequencies across human populations for all trait-associated alleles in the GWAS Catalog [@macarthurNewNHGRIEBICatalog2017]. I provide further background to Chapter \@ref(Fst-chap) in section \@ref(Fst-intro) of this Introduction below.

(ref:wright) Photo of Sewall Wright in 1965. Image from @goodnightSewallWrightSeven2014.

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figs/introduction/Sewall_Wright} 

}

\caption{(ref:wright)}(\#fig:wright)
\end{figure}

### Genetic mapping: Thomas Morgan, Tetsuo Aida and Theodosius Dobzhansky {#mapping-sec}

During this fertile period in statistical genetics research, the physical location of the gene was still a mystery. In the 1890s, Theodor Boveri, a German embryologist working with sea urchins in Naples, identified the chromosome as the location of the gene [@laubichlerBoveriLongExperiment2008]. Inspired by Boveri's work, the American cell biologist Thomas Hunt Morgan (**Figure \@ref(fig:morgan)**) sought to extend it by exploring the architecture of genes using the fruit fly, *Drosophila melanogaster*, as a model organism [@allenThomasHuntMorgan1978]. 

(ref:morgan) Thomas Hunt Morgan in 1920. Portrait taken by A. F. Huettner. Image from @kenneyThomasHuntMorgan2009.

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figs/introduction/Thomas_Morgan} 

}

\caption{(ref:morgan)}(\#fig:morgan)
\end{figure}

Around 1905, Morgan began to breed *Drosophila*, identifying visible variants that he could track over generations, such as white versus red eyes, forked versus straight bristles, disjointed abdomens, and deformed eyes [@hodgeGeneticEngineeringManipulating2009]. Through repeated crossing experiments, Morgan discovered that some genes were transmitted together at a higher rate than chance alone. He proposed that these genes were physically "linked" to one another, implying that they were situated within the chromosome like strings on a bead [@morganMechanismMendelianHeredity1972]. This advanced the understanding of a gene from a purely theoretical unit of inheritance to a physical unit [@morganRelationGeneticsPhysiology1935]. He further discovered that, occasionally, a gene that was otherwise linked to another could "cross over" from one parental strand to the other, generating offspring with a mixture of parental alleles [@morganCritiqueTheoryEvolution1916].

While Morgan was carrying out his experiments with *Drosophila*, Japanese researchers were also studying Mendelian inheritance with the Japanese medaka fish (*Oryzias latipes*), the main subject of this thesis. Following three articles published by three separate professors in Japanese on the recessive inheritance of medaka colour variants [@fukamachi100YearsMedaka2021], a teacher named Tatsuo Aida (**Figure \@ref(fig:aida)**) published the first article in English about medaka in 1921 [@aidaInheritanceColorFreshWater1921] (**Figure \@ref(fig:aida-fig)**). The study involved a total of 22 crosses of two generations, and among several other findings, Aida discovered recombination between the X and Y chromosome -- the world's first demonstration of crossovers between pseudo-autosomal sex chromosomes in any species  [@naruseMedakaModelOrganogenesis2011a].^[The editor, William Castle, was so impressed by this last finding that he added the following footnote to the paper: "It should be pointed out, in justice to the author, that his observations go beyond those of Schmidt in the important respect of showing the occurrence of crossing over between the X and the Y chromosome."]

(ref:aida) Photo of Tetsuo Aida from [@fukamachi100YearsMedaka2021].

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figs/introduction/Aida} 

}

\caption{(ref:aida)}(\#fig:aida)
\end{figure}

(ref:aida-fig) Figure from @aidaInheritanceColorFreshWater1921 showing the different medaka colour variants used in the study.

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figs/introduction/Aida_1921_fig} 

}

\caption{(ref:aida-fig)}(\#fig:aida-fig)
\end{figure}

In the 1930s, Theodosius Dobzhansky (**Figure \@ref(fig:dobzhansky)**), a Ukrainian biologist who had trained with Morgan, used *Drosophila pseudoobscura* to investigate how genetic variation drove evolution [@mukherjeeGeneIntimateHistory2016]. Using a single population of flies that he raised in different temperatures while controlling for all other environmental variables, he found that after four months, the genetic ratios in the two sub-populations had changed [@dobzhanskyGeneticsNaturalPopulations1943]. Through this experiment, he determined that genetic variation was the norm across biology; that the adaptive benefit of a given variant would depend on the particular environment that an individual found itself in; and that most phenotypes were driven by many genes interacting with each other and the environment. 

(ref:dobzhansky) Undated photo of Theodosius Dobzhansky from @coyneTheodosiusDobzhanskyHybrid2016.

\begin{figure}

{\centering \includegraphics[width=0.5\linewidth]{figs/introduction/Dobzhansky} 

}

\caption{(ref:dobzhansky)}(\#fig:dobzhansky)
\end{figure}

### The discovery of the structure of DNA

By the early 1940s, it was known that genes resided in chromatin, the mixture of proteins and nucleic acids that compose chromosomes. After some flirtation with proteins as the molecule of inheritance, @averyStudiesChemicalNature1944 finally proved that it was in fact deoxyribonucleic acid (**DNA**) that was "the material substance of the gene" -- the "cloth from which genes were cut" [@gornerAlteredFatesGenetic1996]. 

From 1951, the British biochemist Rosalind Franklin had been working at King's College in London, using X-ray crystallography to photograph DNA [@maddoxDoubleHelixWronged2003]. In 1952, her student, Raymond Gosling, took the now famous "Photo 51" (**Figure '\@ref(fig:photo51)**), and upon Franklin's decision to depart from King's College, she suggested he show the photo to Maurice Wilkins, a New Zealand-born biophysicist who was also working at King's College on the structure of DNA [@williamsUnravellingDoubleHelix2019]. 

(ref:photo51) Photo 51 from @franklinMolecularConfigurationSodium1953.

\begin{figure}

{\centering \includegraphics[width=0.5\linewidth]{figs/introduction/Photo_51} 

}

\caption{(ref:photo51)}(\#fig:photo51)
\end{figure}

Without Franklin's permission, Wilkins brought photo 51 to James Watson, a molecular biologist working at the University of Cambridge, who immediately saw that "the black cross could arise only from a helical structure" [@marxWatsonCrickDNA2004]. Watson and his colleague Francis Crick, a molecular biologist from England, used this observation -- and a report by Franklin and Wilkins on their most recent measurements of the outer backbone -- to develop the established model of DNA structure: a double helix of a sugar-phosphate backbone and the nucleotide bases facing inwards and paired with one another in the conformation of A$\rightarrow$T and G$\rightarrow$C [@watsonAnnotatedIllustratedDouble2012]. 

Watson and Crick built their complete model in the first week of March 1953, and, following consultations with Wilkins and Franklin, who both approved of the model, published their famous paper on 25 April titled *Molecular structure of nucleic acids: a structure for deoxyribose nucleic acid* [@watsonMolecularStructureNucleic1953]. Theirs was accompanied by two others: one by Gosling and Franklin with crystallographic evidence for the double-helical structure including photo 51 [@franklinMolecularConfigurationSodium1953]; and another by Wilkins corroborating the evidence further with experimental data from DNA crystals [@wilkinsMolecularStructureNucleic1953]. For their discovery, Watson, Crick, and Wilkins were awarded the Nobel Prize in 1962. Franklin had died two years earlier from ovarian cancer, so was not nominated.

It is worth noting that both Watson and Crick have since made a number of controversial comments about eugenics, race and intelligence. In 1970, while reading Karl Pearson's biography of Francis Galton in 1970, Crick wrote to Bernard Davis of Harvard University and said:

>*My other suggestion is in an attempt to solve the problem of irresponsible people and especially those who are poorly endowed genetically having large numbers of unnecessary children. Because of their irresponsibility, it seems to me that for them, sterilization is the only answer and I would do this by bribery. It would probably pay society to offer such individuals something like £1,000 down and a pension of £5 a week over the age of 60. As you probably know, the bribe in India is a transistor radio and apparently there are plenty of takers.* [@ridleyFrancisCrickDiscoverer2006]

<!--
Soon after, in a letter to Sir Peter Medawar, he wrote [@ridleyFrancisCrickDiscoverer2006]:

>*I do not suggest that only the very rich or the very intellectual should have children (what a thought!) but roughly that upper and upper-middle class families be encouraged to have say 3 or 4 on average and manual labourers and obviously dim and disturbed people have 0 or 1.*
-->

In an interview with David Pearson of the Wellcome Library for the History and Understanding of Medicine, Crick also said:

>*In the long run, it is unavoidable that society will begin to worry about the character of the next generation ... It is not a subject at the moment which we can tackle easily because people have so many religious beliefs and until we have a more uniform view of ourselves I think it would be risky to try and do anything in the way of eugenics ... I would be astonished if, in the next 100 or 200 years, society did not come round to the view that they would have to try to improve the next generation in some extent or one way or another.* [@wellcomeFrancisCrickControversial2003]

And in 2015, Watson said:

> *All our social policies are based on the fact that their (blacks) intelligence is the same as ours (whites) – whereas all the testing says not really ... people who have to deal with black employees find this not true.* [@wagenseilDNADiscovererBlacks2015]

During a speaking tour, Watson again claimed that black people were less intelligent than white people, and the idea that "equal powers of reason" were shared across racial groups was a delusion [@milmoFuryDNAPioneer2007]. Long after the atrocities of World War II, the spectre of eugenics remains present among the genetics community, complicating the legacies of Watson and Crick, who were responsible for one of the 20th century's most remarkable discoveries.

### The development of DNA sequencing

In the early 1950s, Frederick Sanger (**Figure \@ref(fig:sanger)**), a biochemist at the University of Cambridge, developed methods of "sequencing by separation", first used to determine the first protein sequence of insulin [@sangerAminoacidSequencePhenylalanyl1951; @sangerAminoacidSequencePhenylalanyl1951a] -- winning him his first Nobel Prize in Chemistry in 1958 [@NobelPrizeChemistrya] -- and later to decipher RNA sequences, with the first being alanine tRNA [@shendureDNASequencing402017]. Following these achievements, Sanger turned to sequencing DNA, flipping his approach to one of "sequencing by synthesis". In 1975 he and Alan Coulson published a preliminary method using radio-labelled nucleic acids to sequence short DNA strands [@sangerRapidMethodDetermining1975]. The major breakthrough, however, occurred in 1977, when he and his colleagues developed what is now known as the "Sanger method" [@sangerDNASequencingChainterminating1977], involving fluorescently-labelled "dideoxy" nucleosides that terminate the chain after being added to the strand. This resulted in strands of different lengths that could be visualised on a four-lane polyacrylamide slab gel, with the location of each fragment indicating the identity of the base at that position.

(ref:sanger) Undated photo of Frederick Sanger from @ObituaryFredSanger2013.

\begin{figure}

{\centering \includegraphics[width=0.5\linewidth]{figs/introduction/sanger} 

}

\caption{(ref:sanger)}(\#fig:sanger)
\end{figure}

The Sanger method was highly accurate and efficient, and further refinements of this approach, together with advances in DNA cloning [@oconnorConstructionLargeDNA1989], led to the development of a method known as "shotgun sequencing". The method involves randomly breaking up genomes into short (100-1000 base pair (**bp**)) strands, sequencing them, and then assembling them based on overlapping regions [@stadenStrategyDNASequencing1979]. This made it possible, for the first time, to sequence whole, large-scale genomes [@shendureDNASequencing402017]. The Human Genome Project was established in 1990 as a large, international consortium, and through the combined application of cloning, mapping, and shotgun sequencing, published the first draft of the human genome in 2001 [@internationalhumangenomesequencingconsortiumInitialSequencingAnalysis2001a; @venterSequenceHumanGenome2001], with an "essentially complete" draft announced in 2003 [@internationalhumangenomesequencingconsortiumInternationalConsortiumCompletes2003].^[The full sequence (including heterochromatic regions) was only completed in 2022 [@nurkCompleteSequenceHuman2022].]

Shortly after this milestone, the Sanger method was superseded by "second generation" DNA sequencing, also called "massively parallel" or "next generation" sequencing (**NGS**). The first NGS platforms arrived in 2005, involving the dense fixation of a library of millions or billions of DNA templates onto a two-dimensional surface. This allowed for amplification at a single position (bridge amplification, @bentleyAccurateWholeHuman2008) or on a single bead (bead amplification, @rothbergDevelopmentImpact4542008) and imaging through the detection of fluorescence from dideoxynucleotides over repeated cycles of biochemistry [@shendureDNASequencing402017]. In this method, each cycle incorporates a single nucleotide, and after imaging to determine which of four colours was incorporated by each template on the surface, the blocking and fluorescent groups are removed to set up the next extension [@shendureDNASequencing402017]. Read lengths from NGS tend to be shorter than the Sanger method (in the low hundreds of bases, compared to 600-700 for Sanger), but with a similar accuracy of over 99.9% [@shendureDNASequencing402017]. The intense competition between several NGS companies including 454 (acquired by Roche), Solexa (acquired by Illumina) and Complete Genomics resulted in the reduction in the cost of DNA sequencing per-megabase from \$1,000 to \$0.10 between 2007 and 2012 [@wetterstrandDNASequencingCosts2021]. 

Sanger sequencing and NGS both come with drawbacks. They require template amplification, which can create copying errors, sequencing-dependent biases, and information loss (for example, DNA modifications) [@shendureDNASequencing402017]. In addition, the short read length can make genome assembly difficult for regions with high repeat content or structural variation [@amarasingheOpportunitiesChallengesLongread2020]. New technologies pioneered by PacBio and Oxford Nanopore Technologies (**ONT**) overcome both issues by sequencing single molecules in real time [@mikheyevFirstLookOxford2014; @rhoadsPacBioSequencingIts2015], which removes the amplification step and generates reads from kilobases (PacBio) up to megabases in length (ONT) [@payneBulkVisGraphicalViewer2019]. These "third-generation" or "long-read" sequencing technologies formerly had a much higher error rate than NGS platforms [@laverAssessingPerformanceOxford2015], but are now quickly closing the gap [[@jainNanoporeSequencingAssembly2018]@wengerAccurateCircularConsensus2019], and recent ONT platforms can also directly sequence DNA modifications [@wangNanoporeSequencingTechnology2021]. The long reads produced by these technologies have two primary benefits. First, they allow for a more straightforward *de novo* assembly of genomes, making it more feasible to construct pan-genomes in a graph-based format that represent a wider spectrum of diversity in a species, rather than calling only short variants based on a single reference genome [@shermanPangenomicsHumanGenome2020]. Second, they can capture complex, large-scale structural variation that has remained hidden until now, and which can have significant effects on phenotypes including autism and schizophrenia in humans [@weischenfeldtPhenotypicImpactGenomic2013]. In Chapter \@ref(MIKK-genomes-chap) I  use the long-read ONT platform to detect structural variants in 9 medaka fish genomes, and compare the traditional reference-based approach to the graph-based approach in respect of their ability to detect those variants.

Altogether, the rapid improvement in sequencing technologies has now reached the stage where a $100 human genome is on the horizon [@pennisi100GenomeNew2022]. These developments are making genetic technologies ever more accessible and informative, paving the way for greater insights into the genetic basis of phenotypic differences. Yet despite these technological advances, the relative contribution of genetics and environment to differences in complex traits is not fully understood -- especially in humans -- and therefore remains an active area of research.

## Causes of variation in complex traits

As discussed above, individual differences in human traits have now been studied for more than a century, yet the causes of variation in human traits remain uncertain and complex [@poldermanMetaanalysisHeritabilityHuman2015]. Specifically, the partitioning of observed variability into underlying genetic and environmental sources, and the relative importance of additive and non-additive genetic variation, continue to be debated to this day [@poldermanMetaanalysisHeritabilityHuman2015].

The most simple causal model for phenotypes is shown in **Figure \@ref(fig:pge-simp)**.

(ref:pge-simp) Simplified causal model of phenotypic differences.

\begin{figure}

{\centering \includegraphics[width=0.5\linewidth]{figs/introduction/pge-simp} 

}

\caption{(ref:pge-simp)}(\#fig:pge-simp)
\end{figure}

This model could be described mathematically as follows, where $P$ represents an individual's phenotype, $G$ represents their genetics, and $E$ represents the environment, being all other (non-genetic) factors that could have influenced their phenotype up to the time of measurement:

\begin{equation}
P = G + E (\#eq:pge-simp)
\end{equation}

It is impossible to parse out the respective contributions of each of these factors at the individual level, so one must use groups to determine how much the *variance* in their observed phenotypes are caused by different factors.<!--, because to what extent does the width or the length of a rectangle determine its area? It is determined by the product of the two. But by examining a population of rectangles, one can determine how much of the *variance* within the population depends on either width or length [@knopikBehavioralGenetics2019]. The same principle applies to genotypic and environmental variation within groups of individuals.--> Fisher's ANOVA methodology allows for the partitioning of variance into components that are attributable to different factors. If the total observed phenotypic variation within a population is represented by $V_{P}$, then it can be decomposed into a simple model that includes genetic and environmental factors [@falconerIntroductionQuantitativeGenetics1996]:

\begin{equation}
V_{P} = V_{G} + V_{E} (\#eq:pge)
\end{equation}

$V_{G}$ is the total proportion of phenotypic variance attributable to genetic factors, and $V_{E}$ is that attributable to environmental factors (i.e. all non-genetic factors). Environmental variance cannot be removed experimentally because it includes by definition all non-genetic variance, and much of this is beyond experimental control. However, elimination of genotypic variance can be achieved experimentally [@falconerIntroductionQuantitativeGenetics1996] by either using human or animal identical twins, or by creating highly inbred lines. Pursuant to Equation \@ref(eq:pge), the environmental variance ($V_E$) can be subtracted from the total phenotypic variance ($V_P$) to give an estimate of the trait's heritability $V_G$ [@falconerIntroductionQuantitativeGenetics1996]. *Broad-sense heritability* ($H^2$) measures the proportion of phenotypic variance that is attributable to genetic factors [@falconerIntroductionQuantitativeGenetics1996]:

\begin{equation}
H^2 = \frac{V_G}{V_P} (\#eq:heritbs)
\end{equation}

$V_{G}$ can be further decomposed into additive, dominance, and interaction ("epistatic") variances. Additive variance, $V_A$, also known as the variance of "breeding values", measures the degree to which offspring resemble their parents due to the alleles they have inherited from them. Dominance variance, $V_D$, measures the dominance deviation, being the extent to which the phenotype deviates from the additive linear relationship across genotypes as a result of interactions between alleles of the same gene. Interaction variance, $V_I$, measures the degree to which the phenotype deviates from the additive linear relationship across genotypes as a result of interactions between genes at different loci [@falconerIntroductionQuantitativeGenetics1996].

\begin{equation}
V_G = V_A + V_D + V_I (\#eq:gendecomp)
\end{equation}

Research has traditionally focused on $V_A$ due to its importance for predicting phenotypes between relatives, and opportunities for change through natural or artificial selection [@hillDataTheoryPoint2008]. Recent evidence has supported the proposition that most genetic variance is additive [@hillDataTheoryPoint2008; @poldermanMetaanalysisHeritabilityHuman2015], although I expand on this point below. *Narrow-sense heritability* ($h^2$) measures the proportion of phenotypic variance attributable to additive genetic variance, and therefore expresses the extent to which phenotypes are determined by genes transmitted from one's parents [@batesonMendelPrinciplesHeredity1909; @falconerIntroductionQuantitativeGenetics1996; @posthumaTheoryPracticeQuantitative2003]. 

\begin{equation}
h^2 = \frac{V_A}{V_P} (\#eq:heritns)
\end{equation}

It is important to note, however, that as heritability (both in its narrow and broad sense) is measured *as a fraction* of total phenotypic variance, it is liable to change depending on the levels of genetic ($V_G$ and $V_A$) and environmental variation ($V_E$) that are present in the study population [@visscherHeritabilityGenomicsEra2008].

### Heritability and twin studies

In humans, the twin study design has been used widely to disentangle the relative contributions of genes and environment for a variety of traits. The classical twin design is based on contrasting the trait resemblance of monozygotic (**MZ**) and dizygotic (**DZ**) twin pairs [@poldermanMetaanalysisHeritabilityHuman2015]. MZ twins share approximately 100% of genotypes, whereas DZ twins, like siblings, share on average 50% of their genotypes [@knopikBehavioralGenetics2019]. Assuming they share the same environment (a point I return to below), a rough estimate of heritability can be obtained by comparing the respective correlations of MZ twins and DZ twins with the phenotype of interest. If $r_{MZ}$ and $r_{DZ}$ are the correlation coefficients observed between pairs of MZ and DZ twins for a trait of interest (Equation \@ref(eq:cor) above), $h^2$ = additive genetic influences (Equation \@ref(eq:heritns) above), and $c^2$ = common environmental influences, then Falconer's formula tells us:

\begin{equation}
r_{MZ} = h^2 + c^2
\end{equation}

\begin{equation}
r_{DZ} = \tfrac{1}{2}h^2 + c^2
\end{equation}

\begin{equation}
\tfrac{1}{2}h^2 = r_{MZ} - r_{DZ}
\end{equation}

Therefore:
\begin{equation}
h^2 = 2\times(r_{MZ} - r_{DZ})
\end{equation}

Narrow-sense heritability $h^2$ can therefore be estimated by doubling the difference between the correlation coefficients of MZ versus DZ twins. A 2015 meta-analysis of virtually all human twin studies that had been performed to that date included 2,748 twin studies assessing ~18,000 traits and ~14.5M twin pairs. The results showed that across all traits, on average, $h^2$ is 0.488 and $c^2$ is 0.174 [@poldermanMetaanalysisHeritabilityHuman2015]. Moreover, in 69% of studies $2r_{DZ} = r_{MZ}$, implying that the shared environment $c^2$ is equivalent across both MZ and DZ twin pairs, and that for most traits, shared environmental or non-additive genetic variation do not make a substantial contribution to phenotypic variation. This was most prominent for neurological, ear, nose and throat, cardiovascular and ophthalmological domains. On the other hand, that study found that several behavioural traits were inconsistent with this model. These traits included conduct disorder, higher-level cognitive functions, mental and behavioural disorders due to the use of alcohol or tobacco, anxiety disorder, and weight maintenance. For these traits, either or both non-additive genetic influences or shared environmental influences are therefore needed to explain the observed patterns of twin correlations [@poldermanMetaanalysisHeritabilityHuman2015]. Leaving to one side the non-additive genetic influences on a phenotype -- which are outside the scope of this thesis -- the findings of this study make it clear that environmental influences contribute substantially to differences in behaviours in humans, which may be further complicated by interactions between the two sources of variation. As social creatures, our social environment is a particularly salient environmental factor, which I discuss below in section \@ref(SGE).


### Gene-environment interactions

The model presented above in Equation \@ref(eq:pge-simp) assumes that the environment has the same effect on different genotypes. When this is not true, and the variance components of genes and environment do not add up -- that is, where $V_{P} \neq V_{G} + V_{E}$ -- there is said to be an interaction between genes and environment (**GxE**) (**Figure \@ref(fig:pgxe)**) [@falconerIntroductionQuantitativeGenetics1996].

(ref:pgxe) Schema for a causal model of phenotypic differences, including GxE.

\begin{figure}

{\centering \includegraphics[width=0.5\linewidth]{figs/introduction/pgxe} 

}

\caption{(ref:pgxe)}(\#fig:pgxe)
\end{figure}

It can be expressed mathematically as: 

\begin{equation}
P = G + E + I_{G\times E} (\#eq:gbye)
\end{equation}

Where the variance decomposition is:

\begin{equation}
V_P = V_G + V_E + V_{G\times E} (\#eq:gbyedecomp)
\end{equation}

**Figure \@ref(fig:schema-gxe)** illustrates the general concept behind GxE. Two different genotypes, $G_A$ and $G_B$, are measured for the phenotype $P$ under two different environments, $E_1$ and $E_2$. Figure \@ref(fig:schema-gxe)A represents a situation where $P = G + E$ holds. Figure \@ref(fig:schema-gxe)B represents a situation where there is an interaction between genes and environment. GxE is common in nature [@garciadeleanizGeneticDeterminationContribution1989; @sgroGeneticCorrelationsTradeoffs2004], and is likely to be particularly relevant to social behaviours, which I expand upon below in section \@ref(SGE).

(ref:schema-gxe) Two different genotypes, $G_A$ and $G_B$ are measured for the phenotype $P$ under two different environments, $E_1$ and $E_2$. Figure adapted from @caballeroQuantitativeGenetics2020.

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figs/introduction/schema_gxe} 

}

\caption{(ref:schema-gxe)}(\#fig:schema-gxe)
\end{figure}


### Animal breeding

Humans have been manipulating the traits of animals for thousands of years, and this observation greatly influenced Darwin's insights into the power of selection [@hillApplicationsPopulationGenetics2014]. The application of the science of genetics to animal breeding was greatly advanced by the work of Jay L. Lush (1896-1982) [@caballeroQuantitativeGenetics2020], who developed the well-known 'breeder's equation' for predicting an animal population's response to artificial selection depending on: a) the heritability of the trait; and b) the selection pressure exerted [@lushAnimalBreedingPlans1937]. 

Animal breeding involves identifying the animals with the highest breeding value and selecting them for reproduction, then replacing them as better ones come along [@hillApplicationsPopulationGenetics2014]. It therefore requires a prediction of the likely effects of using particular individuals for breeding stock in order to maximise the desired phenotype, such as milk yield for cows. Charles Henderson, a student of Lush, recognised that in predicting future animal breeding values, there were the "fixed" effects of the parents' breeding values; fixed effects such as herd, year, or season, which had to be included but not estimated; and then "random" effects, such as litter size, which were samples from a distribution [@hillApplicationsPopulationGenetics2014]. In his PhD thesis [@hendersonEstimationGeneralSpecific1948], he formulated a methodology known as Best Linear Unbiased Prediction (**BLUP**), which incorporates the genetic additive covariances between individuals in the model as a "relationship matrix". Henderson's BLUP method was extended into Restricted (i.e. residual) Maximum Likelihood (**REML**) [@pattersonRecoveryInterblockInformation1971], which is now the standard method used to fit the linear mixed models in Genome-Wide Association Studies (**GWAS**) for animal and plant studies. The genetic relationship matrix is also now a widely-used method for correcting against population structure, which I expand upon in the following section. 

### From global variance to individual loci -- family genetic linkage studies and GWAS {#GWAS}

Twin studies focus on the global partitioning of variances attributable to genetic and environmental facts, but since Morgan's work, researchers have also sought to identify the specific genetic variants responsible for Mendelian phenotypes in humans. From the 1980s, advances in DNA sequencing enabled the application of genetic linkage studies -- such as those previously performed in model organisms like *Drosophila* -- to human families, in order to trace inheritances and thereby discover thousands of genes for rare Mendelian diseases [@altshulerGeneticMappingHuman2008]. The process involved determining known polymorphic regions, and using them as markers to trace the transmission of chromosomal regions in families [@altshulerGeneticMappingHuman2008]. The feasibility of this method was first demonstrated in 1983 with Huntington disease [@gusellaPolymorphicDNAMarker1983], and over the following decades demonstrated that Mendelian disease-causing mutations often cause major changes in encoded proteins. The utility of the approach, however, reached its limit when applied to mapping common diseases such as heart disease, breast cancer, and diabetes [@burtonGenomewideAssociationStudy2007; @altshulerGeneticMappingHuman2008]. 

Instead of tracing genes through families, an alternative approach is to map genes by comparing the frequencies of genetic variants between affected and unaffected individuals, known as a  "case-control" approach. Early applications focused on candidate genes and found correlations between blood-group antigens and peptic ulcer disease in the 1950s [@airdBloodGroupsRelation1954]; the human leukocyte antigen (HLA) locus and autoimmune and infectious diseases in the 1960s and 1970s [@kleinHLASystem2000]; and apolipoprotein E with Alzheimer's disease in the 1980s [@strittmatterApolipoproteinAlzheimerDisease1996]. These early studies were more the exception than the rule, as candidate genes were a "shot in the dark" (as established from the family linkage studies, which often found variants that were previously unsuspected). They were susceptible to false positives caused by population structure [@altshulerGeneticMappingHuman2008].

It became clear that Mendelian diseases were rare, caused by highly-penetrant, monogenic variants that remain rare in the population likely as a consequence of purifying selection [@dirienzoPopulationGeneticsModels2006; @pritchardAllelicArchitectureHuman2002; @quintana-murciRolePlayedNatural2010; @reichAllelicSpectrumHuman2001]. In contrast, common diseases tend to be late onset, therefore leaving reproductive fitness unaffected. This logic led to the "common disease - common variant" hypothesis, driving a push to expand association analyses genome-wide [@collinsVariationsThemeCataloging1997; @landerNewGenomicsGlobal1996; @rischFutureGeneticStudies1996]. 

Next-generation sequencing technologies enabled the inclusion of thousands of SNP markers to be tested simultaneously for their association with a phenotype of interest, with the first Genome-Wide Association Study (**GWAS**) published in 2001 [@ozakiFunctionalSNPsLymphotoxina2002]. GWAS aim to identify genetic variants associated with traits by comparing the allele frequencies of individuals who share similar ancestries, but differ in values for the trait in question [@uffelmannGenomewideAssociationStudies2021]. As of 2021, over 5,700 GWAS have been performed for more than 3,330 human traits [@uffelmannGenomewideAssociationStudies2021]. 

In its simple form, GWAS construct a linear model for each SNP marker of the form [@caballeroQuantitativeGenetics2020]:

\begin{equation}
\textbf{y} = \alpha + \pmb{\beta} \textbf{x} + \textbf{e} (\#eq:gwassimp)
\end{equation}

Where $\textbf{y}$ is a vector of the sample phenotypes, $\alpha$ is the population mean, $\pmb{\beta}$ is a vector of the effect sizes of the marker, $\textbf{x}$ is the number of copies of an allele for each marker (usually 0, 1, or 2), and $\textbf{e}$ is a vector of random residual errors.

However, GWAS must always grapple with population structure and unequal relatedness among individuals, which in a given cohort can lead to false discoveries [@ewensTransmissionDisequilibriumTest1995; @membersofthecomplextraitconsortiumNatureIdentificationQuantitative2003]. This phenomenon is caused by the fact that individuals who share common ancestries will share both variants that do affect the trait of interest, and variants that do not. The non-causal variants that are correlated with the causal variants due to this shared ancestry will therefore also be found to be statistically associated with the trait. Recent methods for dealing with this issue include admixture inference [to identify related clusters, @pritchardInferencePopulationStructure2000], and principal components analysis [to include the first set of principal components as covariates in the model, @pricePrincipalComponentsAnalysis2006]. A popular method, which can also be combined with the above methods, is to use a linear mixed model that includes the random effect $g$ to capture the polygenic effect of all SNPs other than the one being tested. $g$ in turn has a variance that is adjusted by a "kinship matrix" or Genetic Relationship Matrix (**GRM**), $\pmb{\psi}$, which measures the degree of relatedness between individuals in the sample [@yuUnifiedMixedmodelMethod2006; @yangGCTAToolGenomewide2011; @lohEfficientBayesianMixedmodel2015]. The standard linear regression model currently used for GWAS for farm animals and plants can be written as follows [@uffelmannGenomewideAssociationStudies2021]:
<!--
The standard GWAS process involves first genotyping individuals using SNP microarrays, which target common genetic variants. Alternatively, one can sequence their full exomes (Whole Exome Sequencing, **WES**), which targets only the coding regions of the genome, or their full genomes (Whole-Genome Sequencing, **WGS**). It is common to then use principal components analysis (**PCA**) [AND OTHER METHODS?] to restrict the analysis individuals who share common ancestry, in order to avoid population stratification effects [@uffelmannGenomewideAssociationStudies2021]. Missing genotypes can be imputed using a genetic reference panel such as the 1000 Genomes Project [@10002015global]. Finally, an association test can be run, which includes an individual-specific random effect term to account for genetic relatedness among individuals.


Since it became possible to sequence the genotypes of individuals at scale, it has been an ongoing point of debate as to how best to model the effects that genetic variants have on a trait of interest. 
-->

\begin{equation}
\textbf{Y} \sim \textbf{W} \alpha ~+~\textbf{X}_s\pmb{\beta}_s + g + e (\#eq:gwaslmm)
\end{equation}
\begin{equation}
g \sim N(0,\sigma^2_A\pmb{\psi}) (\#eq:gwaslmmg)
\end{equation}
\begin{equation}
e \sim N(0,\sigma^2_e \textbf{I}) (\#eq:gwaslmme)
\end{equation}

Where, for each individual, $\textbf{Y}$ is a vector of phenotype values, $\textbf{W}$ is a matrix of covariates including an intercept term, $\alpha$ is a corresponding vector of effect sizes, $X_s$ is a vector of genotype values for all individuals at SNP $s$, $\pmb{\beta}_s$ is the corresponding fixed effect size of genetic variant $s$ (also known as the SNP effect size), $g$ is a random effect that captures the polygenic effect of other SNPs, $e$ is a random effect of residual errors, $\sigma^2_{A}$ measures additive genetic variation of the phenotype, $\pmb{\psi}$ is the standard GRM, $\sigma^2_e$ measures residual variance, and $\textbf{I}$ is an identity matrix [@uffelmannGenomewideAssociationStudies2021].

The standard GRM ($\pmb{\psi}$) is calculated by first standardising each genotype $k_{ij}$ for the $i$^th^ SNP of the $j$^th^ individual [@yangGCTAToolGenomewide2011]:

\begin{equation}
k_{ij} = (x_{ij} - 2p_i)/\sqrt{2p_i(1-p_i)} (\#eq:grmstd)
\end{equation}

Where $x_{ij}$ is the number of copies of the alternative allele (0, 1, 2), and $p_i$ is the frequency of the alternative allele.

The matrix of standardised genotypes $\textbf{K}$ is then multiplied by its transpose and divided by the number of samples $N$ to produce $\pmb{\psi}$ [@yangGCTAToolGenomewide2011]:

\begin{equation}
\pmb{\psi} = \textbf{K}\textbf{K}'/ N (\#eq:grm)
\end{equation}

GWAS generate outputs that include a $p$-value and directional effect size ($\beta$) for each tested SNP. As the method tends to test millions of SNPs, there need to be corrections for multiple testing. The preferred method for setting the $p$-value threshold for significance varies depending on the study, but in essence it indicates the proportion of false positives that the investigator is willing to tolerate in their study [@clarkeBasicStatisticalAnalysis2011]. By convention, in human studies the threshold is set at $p < 5 \times 10^{-8}$ [@barshGuidelinesGenomeWideAssociation2012; @bushChapter11GenomeWide2012; @clarkeBasicStatisticalAnalysis2011]. The most conservative method, Bonferroni correction, adjusts the type I error rate $\alpha$ by the number of tests performed, so if $\alpha = 0.05$ and the number of loci tested is 500,000, the corrected significance threshold is $0.05 / 500,000 = 1\times10^{-6}$. Bonferroni correction tends to be conservative because it assumes that all loci are independent, which is untrue due to genetic linkage. A less conservative method is a correction for the false discovery rate (**FDR**), which provides an estimate of the proportion of significant results that are actually true [@hochbergMorePowerfulProcedures1990]. It is widely applied to GWAS [@vandenoordControllingFalseDiscoveries2008], but suffers from the same lack of independence between loci. The 'gold standard' method for accurate detection is permutation testing [@westfallResamplingBasedMultipleTesting1993], where the phenotype is randomly permuted across samples and a separate GWAS is run $N$ times, representing $N$ possible samplings of individuals under the null hypothesis, with the lowest $p$-value from those permutations setting the significance threshold. <!--Although more computationally intensive, it generates an empirical distribution with resolution $N$, such that an $N$ of 10 gives an empirical $p$-value of 1/10^th^ of a decimal place [@bushChapter11GenomeWide2012].-->

<!--^[The summed effect sizes of significant SNPs should theoretically reach the heritability estimates from twin studies, however until recently they fell far short, leading to a discussion on the sources of this "missing heritability" [@manolioFindingMissingHeritability2009]. GWAS are limited by sample size, as extremely large samples are required to detect rare variants, and variants with small effect sizes. Short-read sequencing technologies are also unable to detect large "structural" variants, which may have large effects on the phenotype of interest. However, this issue has largely been resolved through improvements in genotyping that can capture rare variants [@yangCommonSNPsExplain2010], and tools such as GCTA which estimates the variance explained by *all* SNPs in the genome, rather than testing the association of individual SNPs [@yangGCTAToolGenomewide2011].]

[NO!!! ARGUMENT MAD EIN THE CASE-CONTROL CONSORTIUM. CLOSER TO A FALSE DISCOVERY RATE ARGUMENT. BASED ON THE QQPLOT. PERMUTATIONS FROM FARM ANIMALS. IN HUMANS THE POPULATION IS ALWAYS SORT FO THE SAME. WITH FARM ANIMALS WE ALWAYS HAVE COMPLICATED STRUCTURE. NEED TO MENTION IN LINKAGE STUDIES OF LOD > 3 IE 1/1000 CRITERIA. ALSO A BIT ARBITRARY. AT WHAT POINT DOES A LOCUS BECOME INTERESTING TO LOOK AT? ]

### Beyond GWAS

[START WITH THE SIMPLE END. HERITABILITY. GWAS. ANIMAL BREEDING. FAMILIES. ]

A simplified causal model for the inheritance of traits from one's parents is presented in **Figure \@ref(fig:pheno-causal-model)**, adapted from @morrisPopulationPhenomenaInflate2020. The ancestry of each parent determines both their genotypes and phenotypes (yellow lines). The parents' genotypes directly affect their own phenotypes (black arrows genotype → phenotype). The parents transmit half of each of their alleles *directly* to their offspring (black arrows from genotype → genotype), while the non-transmitted alleles also affect their offspring *indirectly* through their effect on the parents' phenotypes (red lines), a phenomenon known as "**dynastic effects**" [@kongNatureNurtureEffects2018]. In addition, the parents' phenotypes can be correlated through "**assortative mating**" (green line), which also has the consequence of creating correlations between the genotypes that affect those phenotypes [@howeGeneticEvidenceAssortative2019].^[The model has been substantiated by @hwangEstimatingIndirectParental2020, who discovered that indirect parental genetic effects could influence offspring phenotypes through the alleles that they *do not* pass on to their children, but which drive the parents' own behaviour, ultimately influencing the child's outcomes. Their strategy involved creating "virtual" mothers and fathers by estimating the genotypic dosages of parental genotypes using physically genotyped data from relative pairs. They applied the approach to 19,066 sibling pairs from the UK Biobank and showed a polygenic score consisting of imputed parental educational attainment SNP dosages is strongly related to offspring educational attainment even after correcting for offspring genotype at the same loci.]

(ref:pheno-causal-model) Causal model of offspring phenotypes. Ancestry causes differences in both genotypes and phenotypes of the parents (yellow lines). Dynastic effects are transmitted through parental parental phenotypes (red lines). Assortative mating creates associations between the phenotypes of the parents (green line), which will also lead to genotypic correlations. Arrows represent direction of effect. Figure adapted from @morrisPopulationPhenomenaInflate2020.

\begin{figure}
\includegraphics[width=1\linewidth]{figs/introduction/pheno_causal_model} \caption{(ref:pheno-causal-model)}(\#fig:pheno-causal-model)
\end{figure}

This model only includes environmental factors related to the parents' phenotypes, yet the phenotype of an individual is continuously affected by all other environmental influences it is exposed to throughout its lifetime [@plominNatureNurtureGenetic2005]. 

^[@kongNatureNurtureEffects2018 also showed that parents' non-transmitted alleles can affect a child through their impacts on the parents and other relatives, a phenomenon the authors call "genetic nurture", comprising 29.9% of the transmitted polygenic score.]

Beyond twin-studies, the advent of next-generation sequencing technologies has enabled the dense genotyping of large samples of individuals, leading to the development of new methods for analysing the genetic influences on human traits. The most widely used method is known as the Genome-Wide Association Analysis (**GWAS**).
-->

### Animal models

The methods described above have led to great advances in our understanding of the genetic basis of complex traits. However, when applied to humans, they are hampered by the inability to experimentally manipulate either genes or environment. Since the rediscovery of Mendel's work, researchers have resorted to using model organisms, with which it is possible to control for both. The genetics of model organisms may be controlled to a degree by establishing inbred strains. Mendel used self-fertilising plants, which without sexual reproduction with another organism, are effectively inbred strains. Given their utility for investigating fundamental biological principles, "panels" of inbred strains for several plant and insect model organisms have since been established, including the thale cress (*Arabidopsis thaliana*) [@bergelsonIdentifyingGenesUnderlying2010], common bean (*Phaseolus vulgaris L*) [@johnsonSegregationPerformanceRecombinant1999], tomato (*Lycopersicon esculentum*) [@saliba-colombaniEfficiencyRFLPRAPD2000], maize (*Zea mays*) [@limamiGeneticPhysiologicalAnalysis2002], nematode (*Caenorhabditis elegans*) [@evansQTLGeneElegans2021], and fruit fly (*Drosophila melanogaster*) [@mackayChartingGenotypePhenotype2018].

In Mendel's time, inbred strains of mammals were unknown, but it is in principle possible to create them through the repeated mating of siblings over successive generations, provided they survive the inbreeding depression [@charlesworthGeneticsInbreedingDepression2009]. As the individuals within each line inherit the same haplotype from their related parents, they become almost genetically identical to one another, with the added benefit that their genotypes can be replicated across time in subsequent generations. In the early 1900s, researchers began to develop inbred lines of guinea pigs and mice for the purpose of genetic research. In 1906, an inbreeding experiment involving guinea-pigs was started by George M. Rommel of the Animal Husbandry Division of the United States Department of Agriculture. The experiment was taken over in 1915 by Sewall Wright, who used them to develop his vast contributions to the field [@eatonQuartercenturyInbreedingGuineapigs1932]. 

Contemporaneously, the Harvard undergraduate Clarence Cook Little and his supervisor William Ernest Little collaborated with Abbie Lathrop, a breeder of fancy mice and rats which she marketed to rodent hobbyists and keepers of exotic pets, and later began selling in large numbers to scientific researchers [@steensmaAbbieLathropMouse2010]. In 1902, Castle bought some of Lathrop's mice for his laboratory [@steensmaAbbieLathropMouse2010]. The most frequently used laboratory mouse strain for the past 80 years, C57BL/6J ("Black J"), is derived from one of Lathrop's animals -- mouse number 57 -- bred by Little [@steensmaAbbieLathropMouse2010]. Large panels of inbred mouse lines have since been established, such as the Collaborative Cross (**CC**) [@threadgillCollaborativeCrossRecombinant2011], Diversity Outcross (**DO**) [@svensonHighResolutionGeneticMapping2012] and B6-by-D2 (**BXD**) [@peirceNewSetBXD2004]. However, inbred strains of this organism are descended from only a small number of individuals, originating from three separate species that were bred in captivity, and then undergoing complex domestication before the laboratory lines were established [@morseOriginsInbredMice2012; @wadeGeneticVariationLaboratory2005]. 

Farm animals have also led to advances in understanding the contributions of genes and environment to complex phenotypes [@anderssonGeneticDissectionPhenotypic2001; @anderssonDomesticanimalGenomicsDeciphering2004; @goddardMappingGenesComplex2009]. Their organ systems may be more similar to humans than mouse [@anderssonGeneticDissectionPhenotypic2001]; their high genetic homogeneity increases the power to detect causal variants; and they tend to produce large numbers of offspring which allows for the testing of progeny [@anderssonDomesticanimalGenomicsDeciphering2004].

Although these mammal species are appropriate models for humans due to their orthologous mammalian organ systems and cell types, they are highly domesticated, and therefore do not represent the kind or scope of genetic variation present in wild populations. As gene-environment studies seek to ultimately understand their effects on traits out outbred populations such as humans, there is accordingly a need for a panel of inbred vertebrates that represents the genetic variation that is present in natural populations.

### The Medaka Inbred Kiyosu-Karlsruhe (MIKK) panel {#MIKK-background}

The medaka fish (*Oryzias latipes*) is the model organism studied by Tatsuo Aida, which I introduced above in section \@ref(mapping-sec). Medaka has been studied as a model organism in Japan for over a century [@wittbrodtMedakaModelOrganism2002], and is gaining recognition elsewhere as a powerful genetic model for vertebrates [@spivakovGenomicPhenotypicCharacterization2014]. In addition to possessing a number of desirable traits that are characteristic of model organisms (including their small-size, short reproduction time, high fertility, and concise genome), medaka are also – uniquely among vertebrates – resilient to inbreeding *from the wild*. 

This resilience to inbreeding has allowed (predominantly Japanese) researchers to develop several inbred strains that have been maintained for over 100 generations [@murataMedakaBiologyManagement2019]. One of the most famous inbred medaka strains, *HdrR*, was derived from Tatsuo Aida's collection of southern Japanese medaka fish [@fukamachi100YearsMedaka2021]. Other prominent strains include *HO5* and *iCab* from southern Japan, and *Kaga* and *HNI* from northern Japan. The locations of the originating populations of these strains are set out in **Figure \@ref(fig:line-locations)**. 

(ref:line-locations) Image adapted from @spivakovGenomicPhenotypicCharacterization2014, showing the locations of the originating populations of the inbred medaka strains used in the studies described in Chapters \@ref(Pilot-chap) and \@ref(Somite-chap), as well as the Kiyosu population from which the MIKK panel was derived (Chapters \@ref(MIKK-genomes-chap) and \@ref(MIKK-F2-chap)).

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figs/pilot/line_locations} 

}

\caption{(ref:line-locations)}(\#fig:line-locations)
\end{figure}

Since 2010, the Birney Group at EMBL-EBI, in collaboration with the Wittbrodt Group at COS, University of Heidelberg and the Loosli Group at the Karlsruhe Institute of Technology (**KIT**), have been working to establish the world’s first panel of vertebrate inbred lines from the wild – now known as the Medaka Inbred Kiyosu-Karlsruhe Panel (**MIKK panel**). The MIKK Panel was bred from a wild population caught near Kiyosu in Southern Japan (**Figure \@ref(fig:line-locations)**), and now comprises 80 inbred, near-isogenic "lines" [@fitzgeraldMedakaInbredKiyosuKarlsruhe2022].

The MIKK Panel was created to map genetic variants associated with quantitative traits at a high resolution, and to explore the interactions between those variants and any environmental variables of interest. In **Chapter \@ref(MIKK-genomes-chap)** of this thesis,^[Chapter \@ref(MIKK-genomes-chap) sets out my contributions to @fitzgeraldMedakaInbredKiyosuKarlsruhe2022 and @legerGenomicVariationsEpigenomic2022, which were published as companion papers in the journal *Genome Biology* to introduce the MIKK panel to the scientific community, and describe the genetic characteristics of the MIKK panel that would make it a useful resource for other researchers who wish to explore the genetics of quantitative traits in vertebrates. I am joint-first author on both papers.] I describe several genomic characteristics of the MIKK panel that are relevant to its utility for genetic mapping of complex traits, including:

  1. The inbreeding trajectory of the MIKK panel;
  
  1. Levels of homozygosity across the MIKK panel; 
  
  1. The evolutionary history of the MIKK panel's founding population; 
  
  1. The allele-frequency distribution and rate of linkage disequilibrium (LD) decay; and
  
  1. The structural variants present in 9 lines using ONT long-read sequencing data.

The fundamental utility of the MIKK panel arises from: a) its representation of the genetic variation that exists in a wild population; b) the ability to replicate individuals with near-identical genotypes, allowing one to modify environmental variables while keeping the genetics constant to determine the strength of those *environmental* effects; and c) the presence of numerous inbred lines that can by placed in the same environment, allowing one to infer the strength of the *genetic* effect. The overarching purpose of the MIKK panel is to provide a resource for researchers who seek to combine the traditional F~2~-cross technique pioneered by Mendel with modern genetic sequencing and statistical methods, in order to identify genetic variants associated with complex traits. I describe this process below. For the sake of clarity, in this thesis I refer to the previously established inbred medaka strains *iCab*, *HdrR*, *HO5*, *HNI* and *Kaga* as "strains", and the MIKK panel inbred lines as "lines", although in effect the two terms are synonymous. 

### The F~2~-cross

The F~2~-cross is the same method used by Mendel in his historic paper, but here applied to identifying genetic variants associated with polygenic traits -- traits that are associated with a number of genes. A schema for the method is presented in **Figure \@ref(fig:F2-cross-schema)**. To restate the process, one starts with two inbred strains that diverge for the trait of interest (the 'parental strains', or F~0~ generation). One then crosses the parental strains to create a generation of F~1~ hybrid individuals who each possess, for every pair of their chromosomes, one chromosome from each of their parents. The individuals in this F~1~ generation are genetically identical to their parents with respect to their germ line. Finally, one inter-crosses the F~1~ generation to create a set of F~2~ individuals that share unique combinations of the original F~0~ strains' genotypes, and tend to display values for the trait of interest that span across the spectrum between the extreme values of their parents.

(ref:F2-cross-schema) Schema of the F~2~-cross experimental setup. The F~0~ generation comprises two medaka strains that have extreme, opposing values for a trait of interest, represented by the colours *purple* and *yellow*. Below them is an illustrative single pair of chromosomes. The chromosomes within each pair are depicted as the same colour, as the strains are homozygous through successive generations of inbreeding. Their F~1~ offspring is heterozygous for each pair of their 24 chromosomes, and all F~1~ individuals are therefore almost genetically identical to one another (with the exception of somatic mutations and the regions of the genome that were not homozygous in the parental generations). The F~1~ individuals are then inter-crossed with one another to produce the F~2~ generation, which, due to recombination events during gamete formation, have unique combinations of the parental strains' genotypes, and tend to span the phenotypic spectrum between the extremes of their F~0~ parental strains, represented by their colours.

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/F2-cross-schema} \caption{(ref:F2-cross-schema)}(\#fig:F2-cross-schema)
\end{figure}

By combining this traditional crossing method with modern sequencing technologies, researchers are not only able to map genetic variants associated with a phenotype of interest at a higher resolution than in humans, but also functionally validate those variants by carrying out targeted gene editing in an embryo to confirm that the developed organism shows the expected change in phenotype. Many studies have already made use of this combined method [@blajStructuralVariantsTandem2022; @falker-gieskeGWASMeatCarcass2019; @guGenomeWideAssociationStudy2011; @stratzLinkageDisequilibriumPattern2018], here referred to as an "**F~2~-cross GWAS**".

## Studied phenotypes

In this thesis I use the F~2~-cross GWAS method to identify the genetic variants associated with two traits of primary interest: the periodicity of somite development (**Chapter \@ref(Somite-chap)**), and bold-type behaviours (**Chapter \@ref(MIKK-F2-chap)**). I introduce each of these phenotypes in turn.

### Genetic control of somite period development

During the development of an embryo, somites are the earliest primitive segmental structures that form from presomatic mesoderm cells (**PSM**) [@kimPeriodSomiteSegmentation2011]. They later differentiate into vertebrae, ribs, and skeletal muscles, thereby establishing the body's anterior-posterior axis. **Figure \@ref(fig:mouse-embryo)** depicts a number of formed somites in a 9.5-day-old mouse embryo. 

(ref:mouse-embryo) Image of a mouse embryo at day 9.5 from @gridleyLongShortIt2006, showing somites in darker colours. 

\begin{figure}

{\centering \includegraphics[width=0.6\linewidth]{figs/somites/mouse_embryo_gridley} 

}

\caption{(ref:mouse-embryo)}(\#fig:mouse-embryo)
\end{figure}

Somite formation occurs rhythmically and sequentially, with the time between the formation of each pair of somites referred to as the "period". The period of somite formation varies greatly between species: ~30 minutes for zebrafish, 90 minutes for chickens, 2-3 hours for mice, and 5-6 hours for humans [@hubaudSignallingDynamicsVertebrate2014; @matsudaSpeciesspecificSegmentationClock2020]. **Figure \@ref(fig:somite-seg-ali)** shows the a series of time-stamped images of somite segmentation in medaka fish, generated by my collaborator, Ali Seleit. 

(ref:somite-seg-ali) Time-stamped images of somite segmentation in medaka, generated by Ali Seleit.

\begin{figure}

\includegraphics[width=1\linewidth]{figs/somites/ali_fish_seg_compiled} \hfill{}

\caption{(ref:somite-seg-ali)}(\#fig:somite-seg-ali)
\end{figure}

The period of somite formation is controlled by a molecular oscillator, known as the 'segmentation clock', which drives waves of gene expression in the Notch, fibroblast growth factor (FGF), and Wnt pathways, forming a signalling gradient that regresses towards the tail in concert with axis elongation [@gomezControlSegmentNumber2008]. Over the course of elongation, the wave period increases (i.e. each somite takes longer to form), and the PSM progressively shrinks until it is exhausted, eventually terminating somite formation [@gomezControlSegmentNumber2008]. 

It is not fully understood how the phase waves of the segmentation clock are initially established [@falkImagingOnsetOscillatory2022]. @matsudaSpeciesspecificSegmentationClock2020 found that period differences between mouse and human occur at the single-cell level (i.e. not due to intercellular communication), and are driven by biochemical reaction speeds - specifically, mRNA and protein degradation rates, transcription and translation delays, and intron and splicing delays. To identify the genetic basis of these biochemical differences, our collaborators Ali Seleit and Alexander Aulehla at EMBL-Heidelberg used a CRISPR-Cas9 knock-in approach [@seleitEndogenousProteinTagging2021] to establish a medaka *Cab* strain with an endogenous, fluorescing reporter gene (Her7-Venus) for the oscillation signalling pathway. This method allows them to image somite formation and extract quantitative measures for segmentation clock dynamics, and they determined that the southern Japanese *Cab* strain and the northern Japanese *Kaga* strain have divergent somite periodicity, where *Kaga*'s tends to be faster, and *Cab*'s slower (**Figure \@ref(fig:F0-Cab-Kaga-HdrR)**). 

(ref:F0-Cab-Kaga-HdrR) Comparison of period for three inbred medaka strains (*Cab*, *Kaga* and *HdrR*), as measured from bright field images. f*Kaga*'s period is lower, and therefore it takes less time to form each somite than *Cab*. Figure generated by Ali Seleit.

\begin{figure}

{\centering \includegraphics[width=0.5\linewidth]{figs/somites/ali_period_F0_Cab_Kaga} 

}

\caption{(ref:F0-Cab-Kaga-HdrR)}(\#fig:F0-Cab-Kaga-HdrR)
\end{figure}

Our collaborators accordingly set up an F~2~-cross experiment as described above, using the reporter-carrying *Cab* strain and the *Kaga* strain as the parental F~0~ strains, in order to identify genetic loci associated with these differences in clock dynamics. They inter-crossed the hybrid F~1~ generation to create a sample of 622 F~2~ individuals, imaged the developing embryos of these F~2~ samples, and used pyBOAT [@schmalAnalysisComplexCircadian2022] to extract the oscillation features during somite development. **Figure \@ref(fig:somite-period-ali)** shows a series of raw images used by pyBOAT to track the elongation of a medaka tail during somitogenesis, with the identified posterior tip of the embryo labelled with a blue circle. In **Chapter \@ref(Somite-chap)**, I describe the bioinformatic analyses I performed to map the genetic variants associated with this period phenotype.

(ref:somite-period-ali) Screenshots of vertebral elongation in an F~2~ individual captured by Ali Seleit during imaging. The blue circle represents the point tracked by pyBOAT over time, generating the quantitative phenotype data on period development used in this study.  

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figs/somites/ali_compiled_somite_elong} 

}

\caption{(ref:somite-period-ali)}(\#fig:somite-period-ali)
\end{figure}

### Behaviour

In **Chapters \@ref(Pilot-chap)** and **\@ref(MIKK-F2-chap)** I use medaka as a model organism to explore social genetic effects on bold-type behaviours. Behaviour is a complex trait that is affected by both genes and environment, and for social animals such as humans and medaka, one’s social environment is considered likely to constitute a large component of the environmental effect [@ruzzanteBehaviouralGrowthResponses1990; @youngNeurobiologyHumanSocial2008]. Apart from social aspects, an organism must face many "hostile forces of nature" throughout its life [@bussEvolutionaryPersonalityPsychology1991; @darwinOriginSpeciesMeans1859], such as food shortages, predation, harsh climate, and diseases. Adaptive behaviours allow individuals to navigate such dangers and maximise the likelihood of their survival at both the individual and population level [@limaBehavioralDecisionsMade1990].

Boldness-shyness is thought to be a fundamental axis of behavioural variation in many species, with an obvious causal relationship to an individual’s likelihood of survival, and consequently with natural selection at the population level [@sloanwilsonShynessBoldnessHumans1994]. It represents an evolutionary trade-off between acquiring benefits (in terms of food or mates) and avoiding harms (in terms of predators or conspecific competitors), with each situation accompanied by its own optimal degree of risk [@limaBehavioralDecisionsMade1990]. It is both heritable [@svartbergShynessBoldnessPredicts2002; @brownHeritableExperientialEffects2007], and subject to change following different life experiences or under different environmental conditions [@brownHeritableExperientialEffects2007].

This axis of behaviour has been studied extensively in many organisms. Two generic paradigms for measuring boldness include the *open field* test and the *novel object* test. The open field test involves observing the test subject while it moves freely in an experimental setting, and has been performed on the bullfrog tadpole [@carlsonPersonalityTraitsAre2013], gecko [@nordbergTestingMeasuresBoldness2021], mouse [@garfieldDistinctPhysiologicalBehavioural2011; @yuenBoldnessAreOpen2017], rat [@baudGenomesPhenomesPopulation2014], rabbit [@meijsserAnalysisOpenfieldPerformance1989], common vole [@herdeConsistencyBoldnessActivity2013], and Siberian dwarf hamster [@kandaStabilityActivityBoldness2012]. It is particularly favoured with fish, where the general interpretation is that shy individuals tend to react to novelty by reducing their activity and becoming more vigilant, whereas bold individuals show higher levels of activity and exploratory behaviour [@brownCorrelationBoldnessBody2007; @matsunagaHabituationMedakaOryzias2010; @lalandFishCognitionBehavior2011; @dahlbomBoldnessPredictsSocial2011; @lucon-xiccatoIndividualDifferencesCognition2017; @alfonsoCopingStylesEuropean2019;  @lucon-xiccatoDevelopmentOpenFieldBehaviour2020;   @hamiltonShoalingBoldnessAnxietylike2021; @lucon-xiccatoComparisonAnxietylikeSocial2022].

<!--
mouse autism spectrum disorder [@sheppardStridelevelAnalysisMouse2022]
-->

The second paradigm is the novel object test, where a novel object is introduced to the test subject's environment as a way of simulating a potential threat. The test has been used with birds [@azevedoShynessBoldnessGreater2006], squirrels [@uchidaDecreasedVigilanceHabituation2019], rabbits [@anderssonTwoShadesBoldness2014], baboons [@carterHowNotMeasure2012], vervet monkeys [@blaszczykBoldnessNovelObjects2017], and grey mouse lemurs [@dammhahnRiskTakingForaging2012]. Like the open field test, it has also been extensively used with fish [@brownCorrelationBoldnessBody2007; @schjoldenDoesIndividualVariation2005; @wilsonShyboldContinuumPumpkinseed1993; @wrightEpistaticRegulationBehavioural2006; @wrightInterIntrapopulationVariation2003; @hamiltonShoalingBoldnessAnxietylike2021]. 

Where both test paradigms are performed on the same fish, the behaviours exhibited were found to be correlated across assays, indicating that both were measuring the same boldness-shyness axis [@brownCorrelationBoldnessBody2007]. Both the open field and novel object test also permit the measurement of habituation, where the response of the fish may change over time after growing accustomed to the new environment or object. Variation in the length of time the fish take to return to a more "normal" level of movement may indicate different levels of boldness [@lalandFishCognitionBehavior2011].

### Social genetic effects {#SGE}

Much of life is organised socially, and therefore social interactions can have an influence on how a "focal" individual's phenotype is expressed [@bijmaGeneralDefinitionHeritable2011]. "*Direct Genetic Effects*" (**DGE**) describe the effects of one's own genoytpe on their own phenotype, as measured by $G$. "*Social Genetic Effects*" (**SGE**), also known as "Indirect Genetic Effects", describe the extent to which the social companions' genetics influence the social companions' own phenotypes, which then in turn affect the *focal individual*'s phenotype as a component of the focal individual's environment, $E$ [@bijmaQuantitativeGeneticsIndirect2014; @baudGeneticVariationSocial2017]. Social genetic effects have been shown to exert influence on various traits in mice including anxiety, wound healing, immune function, and body weight [@baudGeneticVariationSocial2017], and various traits related to development and survival in many species of livestock [@ellenProspectsSelectionSocial2014]. However, in those studies the social interactions were maintained throughout development, and it is unclear whether social genetic effects can still exert influence on adaptive behaviours during discrete, time-limited interactions.

The experiments I describe in **Chapters \@ref(Pilot-chap)** and **\@ref(MIKK-F2-chap)** are designed to simultaneously measure both DGE and SGE on the focal individual's behaviour, based on interactions with a single social companion. In **Chapter \@ref(Pilot-chap)** I apply a combined open field and novel object assay to determine the respective contributions of DGE and SGE on bold-shy behaviours in medaka fish, using 5 previously-established inbred strains. This "pilot study" was intended to validate the assay by ensuring that it could detect both DGE and SGE, and to confirm that it isn't unduly affected by confounding factors. In **Chapter \@ref(MIKK-F2-chap)** I extend this analysis over the MIKK panel. I identify the lines that diverged in both (a) their own behaviour; and (b) the level of transmission of their behaviour onto their *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* tank partner, and then use them as the parental strains in an F~2~-cross GWAS to identify the genetic variants associated with those differences.

## Poor transferability of polygenic scores to diverse human populations {#Fst-intro}

**Chapter \@ref(Fst-chap)** -- the final chapter of this thesis -- relates to the poor transferability of polygenic scores derived from GWAS results when applied to non-European populations. Humans have long sought to use genetic information to predict an individual's likely value for a given trait, in our own species and in other organisms. <!--As already discussed, an individual's phenotypic value at a given point in time is the product of complex interactions between their genome and their environment, beginning from embryonic development and continuing throughout their lifetimes.-->It is now clear that complex traits such as height, intelligence, and behaviour are highly polygenic, meaning that they are genetically influenced by hundreds or thousands of genetic variants, each exerting a small effect in one or the other direction along the trait's spectrum [@sellaThinkingEvolutionComplex2019]. A richer understanding of the cumulative effect of genetic variants on any trait allows for the prediction of the value that an individual is most likely to have for that trait. Of all human traits, diseases are particularly salient; in 2018, the global healthcare industry was valued at US\$8 trillion, and predicted to increase to US\$12 trillion by 2022 [@11TrillionGlobal2019]. This strong financial imperative complements the moral imperative to reduce suffering, together driving the question of how to use genetic information to improve human health.

Recent technological developments have made it possible to sequence human genomes at scale, and it is thought that by combining detailed genetic information with with other environmental and phenotypic information (such as lifestyle or clinical factors), clinicians could move towards the practice of "precision medicine", where interventions could be tailored to their patients' unique risk profiles [@wrayPredictionIndividualGenetic2007]. The use of genetic information to predict individuals' values for a trait of interest entails the construction of metrics known as "polygenic scores" (**PGS**) [@lambertClinicalUtilityPolygenic2019]. When the trait is a disease, PGS is commonly known as polygenic risk scores (**PRS**), or genetic risk profiling, but I use the term PGS to encompass both disease and non-disease traits.

### PGS and GWAS {#pgs-intro}

#### PGS

PGS using genetic information alone show modest yet reliable accuracy for the prediction of complex traits [@martinClinicalUseCurrent2019]: the correlations between PGS and the trait value as measured by $R^2$ have reached 0.24 for height [@yengoMetaanalysisGenomewideAssociation2018], and 0.12-0.16 for educational attainment [@okbayPolygenicPredictionEducational2022]. PGS also improve predictions beyond non-genetic clinical models for a variety of health-related traits, including breast cancer [@maasBreastCancerRisk2016], prostate cancer [@schumacherAssociationAnalysesMore2018], and type I diabetes [@sharpDevelopmentStandardizationImproved2019]. The predictive accuracy of PGS scores can be further improved by combining genetic information with lifestyle and clinical factors, as seen with cardiovascular disease [@kheraGenomewidePolygenicScores2018; @kulloIncorporatingGeneticRisk2016; @natarajanPolygenicRiskScore2017; @paquettePolygenicRiskScore2017; @tikkanenGeneticRiskPrediction2013; @sunPolygenicRiskScores2021].

#### GWAS

Most GWAS have been performed with individuals of European ancestry, despite only constituting around 16% of the present global population. Although the proportion of participants in GWAS from a non-European background increased from 4% in 2009 to 16% in 2016 [@popejoyGenomicsFailingDiversity2016]), as of 2019, 79% of all GWAS participants recorded in the GWAS Catalog were of European ancestry, and the proportion of non-European individuals has remained the same or reduced since late 2014 [@martinClinicalUseCurrent2019]. This bias extends to PGS studies, where as of 2019, only 67% of them included only participants of European ancestry, with another 19% including only East Asian ancestry participants, and only 3.8% with cohorts of African, Hispanic, or Indigenous ancestry [@duncanAnalysisPolygenicRisk2019]. 

It is therefore unsurprising that PGS scores are far better at predicting disease risk in individuals of European ancestry than in those of non-European ancestry [@martinHumanDemographicHistory2017; @martinClinicalUseCurrent2019]. Indeed, the predictive accuracy of PGS scores decays with genetic divergence of the GWAS "independent" or "test" sample, from the  "discovery" or "training" sample, as established in both humans [@martinHumanDemographicHistory2017; @martinClinicalUseCurrent2019], and livestock [@clarkImportanceInformationRelatives2012; @habierImpactGeneticRelationship2010; @pszczolaReliabilityDirectGenomic2012]. Compared to PGS scores for those of European ancestry, PGS scores across multiple traits are ~64-78% less accurate for individuals of African ancestry, [@duncanAnalysisPolygenicRisk2019; @martinClinicalUseCurrent2019], ~50% less accurate for individuals of East-Asian ancestry, and ~37% less accurate for individuals of South-Asian ancestry [@martinClinicalUseCurrent2019].

### Contributors to PGS non-transferability

What explains this disparity in predictive value? A number of factors may be responsible, including:

1. The failure of GWAS to identify causal variants that either do not exist or are not identifiable within the "discovery" sample, for both technological and methodological reasons [@martinClinicalUseCurrent2019];

1. The sample populations may differ in linkage disequilibrium (**LD**) -- the correlation structure of the genome -- which would change the estimated effect sizes of the causal variants, even when the causal variants themselves are the same [@martinClinicalUseCurrent2019];

1. Allele frequencies of the causal variants, and the distribution of the effect sizes of the causal variants, may differ between populations [@martinHumanDemographicHistory2017; @scutariUsingGeneticDistance2016]; and

1. The environments and demographies of populations tend to differ. Such differences are often correlated with genetic divergence due to geography, making it difficult to determine whether the associations are driven by the differences between population in their genetics, or their environments [@martinClinicalUseCurrent2019; @kerminenGeographicVariationBias2019]. 

The first three factors can degrade predictive performance even in the absence of biological and environmental differences. On the other hand, environmental and demographic differences can drive forces of natural selection which can in turn drive differences in causal genetic architecture [@martinClinicalUseCurrent2019]. 

I discuss each of these factors in turn before addressing point (3) in **Chapter \@ref(Fst-chap)**. 

#### Technological and methodological limitations of GWAS {#fst-discovery-sec}

The power to discover a causal variant through GWAS depends on the variant's effect size and frequency in the study population [@martinClinicalUseCurrent2019; @shamPowerLinkageAssociation2000]. That is to say, the stronger the variant's effect, or the more common it is, the more likely it is to be discovered. Rare variants tend to have stronger effect sizes [@watanabeGlobalOverviewPleiotropy2019], likely due to purifying selection [@parkDistributionAlleleFrequencies2011], and tend not to be shared across populations [@gravel2011demographic; @10002015global]. This is particularly relevant for sub-Saharan African populations, as they have a much greater level of genetic variance than other populations due to the human species having originated on that continent [@10002015global]. Therefore, if GWAS aren't performed on diverse populations, PGS can't take into account the rare variants present in non-European populations that are likely to exert stronger effects on the trait of interest. There are also several other issues that can affect the discoverability of causal variants through GWAS, including the technology used for genotyping, the selection of the cohort, and the necessary exclusion of genotypic outliers.

With respect to genotyping technologies, GWAS often use data from SNP microarrays. These do not sequence the whole genome, but rather a selection (from several hundred thousand to millions) of genetic markers intended to present *common* genetic variation [@porcuGenotypeImputationGenomeWide2013], which accordingly tend to neglect rare genetic variants [@uffelmannGenomewideAssociationStudies2021]. To increase the density of genotypes, which would increase the likelihood of refining the association signal and identifying causal variants, researchers often "impute" variants that aren't sequenced directly [@porcuGenotypeImputationGenomeWide2013]. The imputation process involves "phasing" the study genotypes onto the genotypes of a "reference panel" [@mccarthyReferencePanel642016]. However, if the reference panel does not sufficiently represent the population in the study sample, they are likely to miss or incorrectly impute those genotypes [@martinClinicalUseCurrent2019]. Again, this is particularly problematic for under-represented African populations. 

The lack of representation of rare variants in SNP microarrays can be overcome by using next-generation sequencing technologies such as whole-genome sequencing (**WGS**) and whole-exome sequencing (**WES**). (The former seeks to sequence the full genome, and the latter of only targets the coding regions of the genome.) These methods are more expensive than SNP microarrays, which hinders their widespread use at scale, and although their costs are continuing to decrease rapidly, there is a question as to whether they return a proportionate benefit in all use cases [@schwarzeAreWholeexomeWholegenome2018]. 

A second limitation is the selection of GWAS cohorts, which can introduce selection and collider biases [@uffelmannGenomewideAssociationStudies2021]. For instance, the UK Biobank, which contains genetic and phenotypic data on 500,000 participants who volunteered for inclusion between 2006 and 2010, tend to be older, female, healthier, and wealthier than non-participants [@fryComparisonSociodemographicHealthRelated2017]. This creates the possibility of confounding genetic associations with environmental factors, which I discuss further in section \@ref(fst-env-sec) of Chapter \@ref(Fst-chap)

A third limitation is the "quality control" step that is required during the GWAS process [@uffelmannGenomewideAssociationStudies2021]. To avoid confounding from population stratification, which can lead to overestimated heritability and biased PGS, GWAS cohorts are filtered to include only those with similar ancestries -- or relative genetic homogeneity -- by clustering individuals through principal component analysis (**PCA**) of their genotypes, and excluding outliers. I elaborate on the issue of population stratification in section \@ref(fst-env-sec) below, but at present, a statistical model for GWAS that can include cohorts with diverse ancestries without the risk of serious confounding is yet to be developed [@bergReducedSignalPolygenic2019].

#### Differences in LD

Because GWAS SNP markers are often not the causal variants themselves, but merely in physical proximity to them, the estimated effect size of a SNP marker depends on the extent to which it is in LD with the causal variant [@mostafaviVariablePredictionAccuracy2020; @pritchardLinkageDisequilibriumHumans2001]. To illustrate the problem, if a SNP has an LD $r^2$ with a causal variant of 0.8 in the discovery population and 0.6 in the target population, it would explain 25% = (1 - 0.6/0.8) less trait variation in the target population, and would therefore be less predictive [@wangTheoreticalEmpiricalQuantification2020]. 

These differences in effect-size estimates may typically be small for most regions of the genome, but as PGS sum across all such effects, they aggregate these population differences [@martinClinicalUseCurrent2019; @bergReducedSignalPolygenic2019]. Previous empirical and simulation studies have shown that accuracy of PGS scores decay with increased genetic differentiation ($F_{ST}$ -- described above in section \@ref(quant-intro)) and LD differences between populations [@habierImpactGeneticRelationship2010; @pszczolaReliabilityDirectGenomic2012; @scutariUsingGeneticDistance2016; @wangTheoreticalEmpiricalQuantification2020]. The issue may be addressed to a degree by using LD information from an external reference panel as a prior to infer the posterior mean effect size of a genetic variant -- @vilhjalmsson2015modeling demonstrated through simulations that this could improve PGS predictive accuracy. Yet the most appropriate means of deal with differences between populations in LD remains an active area of research [@duncanAnalysisPolygenicRisk2019].

#### Differences in allele frequencies

Causal variants can differ in both frequency and effect size between different ancestry groups, e.g. for lactase persistence [@segurelEvolutionLactasePersistence2017a], or skin pigmentation [@adhikariGWASLatinAmericans2019]. If a causal allele is rare in the GWAS discovery population, even if it is discovered (see section \@ref(fst-discovery-sec) above), it is likely to have noisy effect size estimates, and therefore likely to inaccurately estimate its effect size in a different population where it exists at a higher frequency.

Differences in allele frequencies between populations can arise through random genetic drift, or be driven by selective pressures towards the trait optima for a given environment [@harpakEvolutionGroupDifferences2021]. However, evolutionary biologists have found that differences between populations in the mean values for traits tend to occur through small, coordinated shifts in their allele frequencies [@bergReducedSignalPolygenic2019; @edgeReconstructingHistoryPolygenic2019]. In Chapter \@ref(Fst-chap), I explore the differences in allele frequencies across populations for all polygenic traits in the GWAS Catalog, and confirm that with few exceptions -- including skin pigmentation, and HIV viral load -- the differences in allele frequencies between populations tends to be small.

#### Differences in environment {#fst-env-sec}

Genes continuously interact with each other (GxG, or "epistasis" [@grosEvolutionEpistasisIts2009]), the genes of one's parents ("genetic nurture", @kongNatureNurtureEffects2018) or social companions ("social genetic effects") [@domingueSocialGenomeFriends2018; @baudGeneticVariationSocial2017],^[Which I also explore in Chapters \@ref(Pilot-chap) and \@ref(MIKK-F2-chap)] and the wider non-genetic environment (GxE).

The respective contributions of genetics and environment to traits with social value -- such as intelligence -- is highly contentious, especially when there are apparent differences between populations in the mean values for those traits. PGS measure the proportion of variance within a population that is explained by genetics. Because PGS summarises a *proportion* of the total variance, when studying a population that is subject to greater environmental variation, the variance attributable to genetic factors will proportionately reduce. The corollary being that when studying a population where the environment is held constant, the proportion of variance for that trait that is explained by genetic factors will approach 1. Therefore, increases in the amount of environmental variance that a population is exposed to will reduce the accuracy of PGS predictions when applied to that population. 

Different environments are also often correlated with population structure [@bergReducedSignalPolygenic2019]. For example, in East Asia, there is a greater proportion of individuals of East-Asian ancestry than there is of European ancestry, and *vice versa* in Europe. Those East-Asian individuals will therefore tend to share more of their genetic background with each other than with Europeans, and that population structure will be correlated with the different environments that exist in East Asia compared to Europe. This makes it difficult to determine whether it is the differences in their environments or the differences in their genetics that is driving the discrepancies between the mean values for traits between those populations. These complexities are unlikely to be resolved in the near future, which makes it attractive to turn to model organisms to address more basic biological questions regarding GxE in relation to complex traits [@anderssonDomesticanimalGenomicsDeciphering2004], as I have done with respect to behaviour in Chapters \@ref(Pilot-chap) and \@ref(MIKK-F2-chap).

### Variation in trait-associated allele frequencies across diverse human populations

To shed some light on the extent to which differences in allele frequencies between populations contribute to the poor transferability of PGS to non-European populations, in Chapter \@ref(Fst-chap) I describe how I extracted all approximately-unlinked, trait-associated SNPs in the GWAS Catalog [@macarthurNewNHGRIEBICatalog2017], and used $F_{ST}$ to measure the differences in allele frequencies between the 26 diverse populations in the 1000 Genomes Project phase 3 release dataset [@10002015global]. I then ranked the traits based on the differences in the distributions of $F_{ST}$ relative to an allele-frequency matched set of control SNPs to identify the traits for which there is substantial variation in their associated alleles across global populations. 

## Summary of results chapters

In Chapter 2, I describe several genomic characteristics of the Medaka Inbred Kiyosu-Karlsruhe (MIKK) panel that are relevant to its utility for the genetic mapping of complex traits, including: the degree of homozygosity in the inbred lines; the panel's evolutionary relationship with other previously-established inbred medaka strains; the rate of linkage disequilibrium decay across the panel; and the genomic repeats and structural variation present in their genomes.

In Chapter 3, I use a custom behavioural assay to characterise and classify bold-shy behaviours in 5 previously established inbred medaka strains. I describe the assay, assess its robustness against confounding factors, and apply a hidden markov model (HMM) to classify the fishes' behaviours across a spectrum of boldness-shyness based on the individuals' distance and angle of travel between pre-defined time intervals. I describe how the strains differ in their behaviours over the course of the assay (a "direct genetic effect") and how the behaviour of a single "reference" strain (*iCab*) differs in the presence of different strains (a "social genetic effect").

In Chapter 4, I describe the bioinformatic processes and genetic association models that I used to map the variants associated with variation in the period of somite development, based on an F~2~-cross between the southern Japanese *iCab* strain, and the northern Japanese *Kaga* strain. 

In Chapter 5, I explain how I ran the custom behavioural assay described in Chapter 3 over the MIKK panel to identify lines that diverge in both their own bold-shy behaviours (the direct genetic effect) and the extent to which they transmit those behaviours onto their tank partners (the social genetic effect). I then describe how I used those divergent lines as the parental lines in a multi-way F~2~-cross to identify the genetic variants associated with both direct and social genetic effects.

Finally, in Chapter 6, I turn to humans to compare and rank all complex traits in the GWAS Catalog based on the extent to which their associated alleles vary across global populations, using the Fixation Index ($F_{ST}$) as a metric, and the 1000 Genomes dataset as a sample of global genetic variation. In this chapter I set out the bioinformatic pipelines used to process the data, present the distributions of $F_{ST}$ for trait-associated alleles across the genome, and use the Kolmogorov-Smirnov test to compare the distributions of $F_{ST}$ across different traits.

Altogether, this thesis describes some of the genomic characteristics of both medaka fish and humans, and how those variations relate to differences in complex traits, with a particular focus on the genetic causes of adaptive behaviours and the transmission of those behaviours onto one's social companions.


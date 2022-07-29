# Genetic linkage study of bold/shy behaviours in the MIKK panel {#MIKK-F2-chap}

The purpose of the study described in this chapter was to run the behavioural analysis described in Chapter  \@ref(Pilot-chap) over the MIKK panel described in Chapter \@ref(MIKK-genomes-chap), identify the lines that diverged in both their behaviour, and the level of transmission of their behaviour onto their *iCab* reference tank partner, and then use them as the parental strains in an F2 cross to attempt to identify the genetic variants associated with those differences.

## F2 cross

The F2 cross is a traditional method for mapping genetic variants associated with traits of interest. A schema for the method is presented in **Figure \@ref(fig:F2-cross-schema)**. In essence, it involves starting with two inbred strains that diverge for the trait of interest (the 'parental strains', or F0 generation F0). One then crosses the parental strains to create a generation of F1 hybrid individuals who each possess, for every pair of their chromosomes, one chromosome from each of their parents. The individuals in this F1 generation are genetically identical to their parents with respect to their germline. Finally, one inter-crosses the F1 generation to create a set of F2 individuals that share unique combinations of the original F0 strains' genotypes, and tend to display values for the trait of interest that span across the spectrum between the extreme values of their parents.

(ref:F2-cross-schema) Schema of the F2-cross experimental setup. The F0 generation comprises two medaka strains that have extreme, opposing values for a trait of interest, represented by the colours red and blue. Below them is an illustrative single pair of chromosomes. The chromosomes within each pair are depicted as the same colour, as the strains are homozygous through successive generations of inbreeding. Their F1 offspring is heterozygous for each pair of their 24 chromosomes, and all F1 individuals are therefore almost genetically identical to one another (with the exception of somatic mutations and the regions of the genome that were not homozygous in the parental generations). The F1 individuals are then inter-crossed with one another to produce the F2 generation, which, due to recombination events during gamete formation, have unqiue combinations of the parental strains' genotypes, and tend to span the phenotypic spectrum between the extremes of their F0 parental strains, represented by their colours.

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/F2-cross-schema} \caption{(ref:F2-cross-schema)}(\#fig:F2-cross-schema)
\end{figure}

## Data collection - F0 generation

In November 2019 I traveled to the fish facility managed by our collaborator, Felix Loosli at KIT in Karlsruhe, and over the course of 11 days from 11 to 21 November 2019, I ran the behavioural assay described in Chapter \@ref(pilot-data-collection) another 206 times. I again used the *iCab* strain as the reference fish, and for the test fish I used either an individual from one of the MIKK panel lines, individuals captured from the same Kiyosu population as the MIKK panel but permitted to breed freely within a separate tank in the facility ('Kiyosu closed-capture', or 'Kiyosu CC'), or individuals from a related but different species of medaka from the Philippines, *Oryzias luzonensis*. I ensured that I performed at least 2 assay runs for each MIKK panel line that was available, generating a minimum of 8 test fish replicates per line. As there were four pairs of fish in the test tank during each run, the complete dataset comprises 824 videos of pairs of fish, which I further divided by assay component (open field and novel object) to create 1648 videos. 

I again used the software *idtrackerai* [@romero-ferreroIdtrackerAiTracking2019] to track the movement of the fishes across frames of each video. After adjusting the software parameters for each video to maximise the number of frames that were successfully tracked, I was left with 1610 out of the 1648 videos (~97.7%) where both fishes were tracked over at least 85% of frames. Only these 1610 videos were used in the downstream analysis. The first question to address was whether the MIKK panel lines differed in their behaviours. I therefore computed each individual fish's mean speed (measured as the distance traveled in pixels per 0.05 seconds) over the course of the full 20-minute video, grouped them by line, and plotted the results presented in **Figure \@ref(fig:mikk-mean-speed)**.

(ref:mikk-mean-speed) Mean speed of the MIKK panel and other strains over the course of the entire 20-minute video (measured as the distance traveled in pixels per 0.05 seconds). *iCab* fishes in the *iCab*-*iCab* control condition are at the top, the MIKK panel lines are sorted by their group median, and the Kiyosu closed capture and *O. luzonensis* fishes are at the bottom.

## Mean speed for all MIKK lines

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/F0_line_mean_speed_0.08} \caption{(ref:mikk-mean-speed)}(\#fig:mikk-mean-speed)
\end{figure}

This figure shows that there are clear differences between some MIKK panel lines at the extremes, and that the lines differ in the amount of within-line variance observed. This figure acted as a guide to determine which lines to select as the parental strains in the F2 cross. To identify genetic variants directly associated with bold-shy behaviours, I sought to select lines that showed either high or low levels of movement, and preferably low within-line variance. 

## HMM states

To examine these behaviours at a finer resolution, as for the pilot study described in \@ref(Pilot-chap), I again applied a hidden markov model (**HMM**) to classify the fishes' movements based on their distance and angle of travel between time intervals. I used the same method to select the best choice of time interval and number of states (**Figure \@ref(mikk-param-comp)**). Here we observed the same phenomenon where the parameter combinations that performed the best showed an asymmetry between some states that would make interpretation difficult. For example, a time interval of 0.08 seconds combined with a state space of 17 caused state 4 to appear to get carved out of state 3 (**Figure \@ref(fig:mikk-hmm-asym)**).

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/compare_params} \caption{(ref:mikk-param-comp)}(\#fig:mikk-param-comp)
\end{figure}

(ref:mikk-hmm-asym) The best apparent combination of parameters (0.08 time interval with a 17-state space) created an asymmetry between states 3 and 4, which would causes difficulties in interpreting their biological relevance. 

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/0.08_17_polar_all_dge} \caption{(ref:mikk-hmm-asym)}(\#fig:mikk-hmm-asym)
\end{figure}

I therefore selected the best combination of parameters without this asymmetry, which in this case was a time interval of 0.05 seconds with a state space of 15 (**Figure \@ref(fig:mikk-hmm-sym)**), and used these states for all downstream analysis.

(ref:mikk-hmm-sym) The HMM states used for the downstream analysis, with the model classified based on the distance of travel (log<sub>10</sub> pixels, radial axis) and angle of travel (angle). A straight forward movement would sit around 0°, a left movement around 270°, and a right movement around 90°. 

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/0.05_15_polar_all_dge} \caption{(ref:mikk-hmm-sym)}(\#fig:mikk-hmm-sym)
\end{figure}


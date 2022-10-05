# Genetic linkage study of bold/shy behaviours in the MIKK panel {#MIKK-F2-chap}

\chaptermark{MIKK panel behaviour}



The purpose of the study I set out in this chapter was to run the behavioural analysis described in Chapter \@ref(Pilot-chap) over the MIKK panel, identify the lines that diverged in both (a) their own behaviour; and (b) the level of transmission of their behaviour onto their *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* reference tank partner, and then use them as the parental strains in an F~2~-cross to attempt to identify the specific genetic loci associated with those differences.

## Data collection - F~0~ generation

In November 2019 I traveled to the fish facility managed by our collaborators, the Loosli Group at KIT in Karlsruhe, Germany, and over the course of 11 days from 11 to 21 November 2019, I ran the behavioural assay described in Chapter \@ref(pilot-data-collection) another 206 times. I again used the *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* strain as the reference fish, and for the test fish I used either an individual from one of the MIKK panel lines, individuals captured from the same Kiyosu population as the MIKK panel but permitted to breed freely within a separate tank in the facility ('Kiyosu closed-capture', or '**Kiyosu CC**'), or individuals from a related but different species of medaka from the Philippines, *Oryzias luzonensis*. I ensured that I performed at least 2 assay runs of 4 individuals each on two different days for each MIKK panel line that was available, generating a minimum of 8 test fish replicates per line. As there were four pairs of fish in the test tank during each run, the complete dataset comprises 824 videos of pairs of fish, which I further divided by assay component (open field and novel object) to create 1648 videos. 

I again used the software *idtrackerai* [@romero-ferreroIdtrackerAiTracking2019] to track the movement of the fishes across frames of each video. After adjusting the software parameters for each video to maximise the number of frames that were successfully tracked, I was left with 1610 out of the 1648 videos (~97.7%) where both fishes were tracked over at least 85% of frames, and I only included these 1610 videos in the downstream analysis. The first question to address was whether the MIKK panel lines differed in their behaviours. I therefore computed each individual fish's mean speed (measured as the distance traveled in pixels per 0.08 seconds) over the course of the full 20-minute video, grouped them by line, and plotted the results presented in **Figure \@ref(fig:mikk-mean-speed)**. I continue to use the same order and colour palette for the MIKK panel lines as in this Figure throughout the rest of this Chapter.

(ref:mikk-mean-speed) Mean speed of the MIKK panel and other strains over the course of the entire 20-minute video (measured as the distance traveled in pixels per 0.08 seconds). *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* fishes in the *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}*-*\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* control condition are at the top, the MIKK panel lines are sorted by their group median, and the Kiyosu closed capture and *O. luzonensis* fishes are at the bottom.

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/line_mean_speed_0.08_all} \caption{(ref:mikk-mean-speed)}(\#fig:mikk-mean-speed)
\end{figure}

This figure shows that there are clear differences between some MIKK panel lines at the extremes, and that the lines differ in the amount of within-line variance observed (shown plotted against the lines' median speed in **Figure \@ref(fig:mikk-mean-speed-variance)**). These figures acted as a general guide to determine which lines to select as the parental strains in the F~2~-cross. To identify genetic variants directly associated with bold-shy behaviours, I sought to select lines that showed either high or low levels of movement, and preferably low within-line variance. 

(ref:mikk-mean-speed-variance) Line median (vertical axis) and line variance (horizontal axis) for individual mean speed (pixels per 0.08 seconds) across the full 20-minute video (i.e. both the open field and novel object assay components).

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/line_mean_speed_variance_0.08_all} \caption{(ref:mikk-mean-speed-variance)}(\#fig:mikk-mean-speed-variance)
\end{figure}

To illustrate the differences between certain lines in terms of both direct and social genetic effects, in **Figure \@ref(fig:extreme-paths)** I have plotted the tracked paths for 3 lines 5 minutes into the 10-minute open field assay component: the slowest line \definecolor{22-1 (‘David’)_FB737A}{HTML}{FB737A}\textcolor{22-1 (‘David’)_FB737A}{22-1 (‘David’)},^[In our group, we gave several lines nicknames to facilitate conversations about them. In almost all cases, for the entirety of the assay, David remained as still (and captivating) as Michelangelo's statue.] one of the other slowest lines \definecolor{18-2 (‘Elsa’)_FF66A6}{HTML}{FF66A6}\textcolor{18-2 (‘Elsa’)_FF66A6}{18-2 (‘Elsa’)},^[Elsa was Frozen like David, but far more charismatic.] and the fastest line \definecolor{10-1 (‘Janeway’)_F8766D}{HTML}{F8766D}\textcolor{10-1 (‘Janeway’)_F8766D}{10-1 (‘Janeway’)}. The fishes are coloured by their line, with *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* in dark grey. There appears to be a social genetic effect when comparing the behaviour of *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* when paired with the similarly slow-moving lines  and \definecolor{18-2 (‘Elsa’)_FF66A6}{HTML}{FF66A6}\textcolor{18-2 (‘Elsa’)_FF66A6}{18-2 (‘Elsa’)}. At the other extreme, line \definecolor{10-1 (‘Janeway’)_F8766D}{HTML}{F8766D}\textcolor{10-1 (‘Janeway’)_F8766D}{10-1 (‘Janeway’)} has moved extremely quickly,^[Janeway moved so fast it appeared she was approaching warp speed.] spending much of its time moving along the boundaries of their test tanks. I understand from our collaborator Felix Loosli, a fish behaviour expert, that this movement along the boundaries of a tank is typical of medaka when introduced to a novel environment, and I observe it too with *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* when it is paired with line \definecolor{22-1 (‘David’)_FB737A}{HTML}{FB737A}\textcolor{22-1 (‘David’)_FB737A}{22-1 (‘David’)}. 

(ref:extreme-paths) Path plots for lines \definecolor{22-1 (‘David’)_FB737A}{HTML}{FB737A}\textcolor{22-1 (‘David’)_FB737A}{22-1 (‘David’)} (**A**), \definecolor{18-2 (‘Elsa’)_FF66A6}{HTML}{FF66A6}\textcolor{18-2 (‘Elsa’)_FF66A6}{18-2 (‘Elsa’)} (**B**) and \definecolor{10-1 (‘Janeway’)_F8766D}{HTML}{F8766D}\textcolor{10-1 (‘Janeway’)_F8766D}{10-1 (‘Janeway’)} (**C**) 5 minutes into the open field assay for the first (left) and second (right) run with each line. The paths of *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* individuals are coloured in dark grey, with the other lines depicted in their representative colours.

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/path_plot_22-1_18-2_10-1_300} \caption{(ref:extreme-paths)}(\#fig:extreme-paths)
\end{figure}

Although lines \definecolor{22-1 (‘David’)_FB737A}{HTML}{FB737A}\textcolor{22-1 (‘David’)_FB737A}{22-1 (‘David’)} and \definecolor{10-1 (‘Janeway’)_F8766D}{HTML}{F8766D}\textcolor{10-1 (‘Janeway’)_F8766D}{10-1 (‘Janeway’)} were the most extreme in terms of mean speed, I ruled them out of selection for the F~2~-cross for the following reasons. Our collaborators informed us that through a separate analysis on heartbeat phenotypes across the MIKK panel, they discovered that the heart of line \definecolor{22-1 (‘David’)_FB737A}{HTML}{FB737A}\textcolor{22-1 (‘David’)_FB737A}{22-1 (‘David’)} often stops beating for up to minutes at a time. This may explain the lack of movement observed during our assay. The behaviours they exhibit may therefore not represent a phenotype related to the boldness-shyness axis, but rather an extreme phenotype of a particular organ system. Our collaborators are, however, using this line in a separate F~2~-cross investigating heart phenotypes.

On the other hand, line \definecolor{10-1 (‘Janeway’)_F8766D}{HTML}{F8766D}\textcolor{10-1 (‘Janeway’)_F8766D}{10-1 (‘Janeway’)} appeared to habituate to the open field assay component by slowing down, rather than speeding up (**Figure \@ref(fig:10-1-dens)**). That is to say, as the assay progressed, they slowed down their movement, and this suggests that their typical response to stress is to move faster rather than slower. However, as I am using speed as a proxy for boldness (where a quicker habituation to the assay, indicated by an increase in movement, suggests greater boldness), this would create difficulties in attributing a functional interpretation of behaviours in the F~2~ individuals, and for this reason I excluded line \definecolor{10-1 (‘Janeway’)_F8766D}{HTML}{F8766D}\textcolor{10-1 (‘Janeway’)_F8766D}{10-1 (‘Janeway’)}.

(ref:10-1-dens) Tile and density plots for line \definecolor{10-1 (‘Janeway’)_F8766D}{HTML}{F8766D}\textcolor{10-1 (‘Janeway’)_F8766D}{10-1 (‘Janeway’)}, showing the reduction in the frequency of higher-movement states over the course of the open field assay component (**A** and **B**), with the novel object assay component (**C** and **D**) for comparison. 

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/select_0.08_15_10-1_dge} \caption{(ref:10-1-dens)}(\#fig:10-1-dens)
\end{figure}

\clearpage
## HMM states

To explore the behaviours of the MIKK panel at a finer resolution, as for the pilot study described in Chapter \@ref(Pilot-chap), I again applied a Hidden Markov Model (**HMM**) to classify the fishes' movements based on their distance and angle of travel between time intervals. I used the same method to select the best choice of time interval and number of states (**Figure \@ref(fig:mikk-param-comp)**). 

(ref:mikk-param-comp) Comparison between HMM parameters. Horizontal axis: Mean concordance between states assigned by HMMs through a 2-fold cross-validation process. Vertical axis: Kruskal-Wallis statistic comparing strains based on the proportion of time spent in each HMM state, summed across all states. Size of points correspond to the interval, in seconds, between which the distance and angle of travel was calculated (Methods). The top right of the figure represents the better models, indicated by the pink arrow. The highlighted circle represents the best combination of HMM state space and time interval that also had favourable symmetrical properties (see below).

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/compare_params_with_arrows} \caption{(ref:mikk-param-comp)}(\#fig:mikk-param-comp)
\end{figure}

Here I observed the same phenomenon where the parameter combinations that performed the best showed an asymmetry between some states that would make interpretation difficult. For example, a time interval of 0.08 seconds combined with a state space of 17 caused state 4 to appear to get carved out of state 3 (**Figure \@ref(fig:mikk-hmm-asym)**).

(ref:mikk-hmm-asym) Based on the concordance analysis results set out in Figure \@ref(fig:mikk-param-comp) above, the best apparent combination of parameters -- 0.08 time interval with a 17-state space -- created an asymmetry between states 3 and 4, which would cause difficulties in interpreting their biological relevance. 

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/0.08_17_polar_all_dge} \caption{(ref:mikk-hmm-asym)}(\#fig:mikk-hmm-asym)
\end{figure}

The best combination of parameters *without* this asymmetry was a time interval of 0.05 seconds with a state space of 15 (see the polar plots for the states in **Appendix \@ref(fig:hmm-states-05)**). However, due to a glitch in the video recording software, several videos recorded on 13 November 2019 were incorrectly recorded with a frame rate of 14 instead of the desired 30. The insufficient number of frames for those videos meant that it was impossible to measure the distance and angle of travel between a time interval as low as 0.05 seconds. So that these videos could be included in the dataset, I accordingly selected the combination of 15 states and a 0.08-second interval for all downstream analyses (**Figure \@ref(fig:mikk-hmm-sym)**).

(ref:mikk-hmm-sym) The HMM states used for the downstream analysis, with the model classified based on the distance of travel (log~10~ pixels, radial axis) and angle of travel (angle). A straight forward movement would sit around 0°, a left movement around 270°, and a right movement around 90°. 

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/0.08_15_polar_all_dge} \caption{(ref:mikk-hmm-sym)}(\#fig:mikk-hmm-sym)
\end{figure}

\clearpage
## Social genetic effects

As discussed above, in this project our traits of interest include not only direct genetic behaviours, but also social genetic behaviours. I therefore sought to identify the MIKK panel lines that transmit their behaviour onto the reference *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* tank partners either to the greatest or least extent. I refer to this transmission of behaviour as "***charisma***", to capture the element of behavioural influence. I formulated two methods to measure charisma, which I refer to as a) HMM state co-occupancy; and b) reference deviation. The first, HMM state co-occupancy, measures the proportions of time that the *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* reference fish spends in the same HMM state as its tank partner. The second, deviation of the reference fishes' behaviour from the behaviour exhibited in the *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}*-*\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* condition, seeks to quantify the extent to which the *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}*'s behaviour changes when partnered with each MIKK panel line.

### State co-occupancy

**Figure \@ref(fig:F0-sge-cooc-box)** sets out the proportions of total time for each assay sub-component that each pair of individual fish spent in the same HMM state, grouped by line and ranked in the same order as their group median for individual mean speed as shown above in **Figure \@ref(fig:mikk-mean-speed)**. **\@ref(fig:F0-sge-cooc-box)A** shows the data as boxplots, with $p$-values from the Kruskal-Wallis test comparing all groups. **Figure \@ref(fig:F0-sge-cooc-box)B** shows the same data but with each group's median represented by columns to make it easier to compare group medians. Of the slower-moving lines, \definecolor{8-2 (‘Gail’)_FF699C}{HTML}{FF699C}\textcolor{8-2 (‘Gail’)_FF699C}{8-2 (‘Gail’)}^[Named after Gail the Snail, the slow but curiously captivating character from *It's Always Sunny in Philadelphia*.] and \definecolor{18-2 (‘Elsa’)_FF66A6}{HTML}{FF66A6}\textcolor{18-2 (‘Elsa’)_FF66A6}{18-2 (‘Elsa’)} tend to show relatively higher state co-occupancy in the open field component, but during the novel object component, the slow-moving line \definecolor{139-4_FF61CC}{HTML}{FF61CC}\textcolor{139-4_FF61CC}{139-4} has the highest median co-occupancy of all lines. Of the faster-moving lines, \definecolor{43-2_F17D50}{HTML}{F17D50}\textcolor{43-2_F17D50}{43-2} and \definecolor{13-2_F57A5F}{HTML}{F57A5F}\textcolor{13-2_F57A5F}{13-2} showed the highest state co-occupancy during the open field assay component. However, the moderate-to-fast line \definecolor{21-2 (‘Amelia’)_49B500}{HTML}{49B500}\textcolor{21-2 (‘Amelia’)_49B500}{21-2 (‘Amelia’)}^[Named after the speedy and charismatic Amelia Earhart.] had relatively high state co-occupancy during both assay components.

(ref:F0-sge-cooc-box) Frequency of HMM state co-occupancy

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/0.08_15_cooc_box_all} \caption{(ref:F0-sge-cooc-box)}(\#fig:F0-sge-cooc-box)
\end{figure}

To visualise which states are driving the higher co-occupancy measures, for a selection of lines I generated a heatmap of the states occupied simultaneously by the *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* reference and MIKK test fishes, combining the observations for all individuals within each test fish group (**Figure \@ref(fig:F0-sge-cooc-heat)**). When *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* is paired with \definecolor{18-2 (‘Elsa’)_FF66A6}{HTML}{FF66A6}\textcolor{18-2 (‘Elsa’)_FF66A6}{18-2 (‘Elsa’)} or \definecolor{8-2 (‘Gail’)_FF699C}{HTML}{FF699C}\textcolor{8-2 (‘Gail’)_FF699C}{8-2 (‘Gail’)}, the fishes most frequently occupy states 3 or 1 in both open field and novel object components. In pairings with line \definecolor{139-4_FF61CC}{HTML}{FF61CC}\textcolor{139-4_FF61CC}{139-4}, while the test fishes remain in the still states 1 or 3 during the open field assay, *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* tends to be moving much faster in states 11 and 13. However, during the novel object component, they co-occupy state 3 more than in any other combination. This general pattern is observed with line \definecolor{14-2_F066EA}{HTML}{F066EA}\textcolor{14-2_F066EA}{14-2} as well, albeit to a lesser extent. For \definecolor{38-2 (‘Mark’)_00C08B}{HTML}{00C08B}\textcolor{38-2 (‘Mark’)_00C08B}{38-2 (‘Mark’)},^[Line 38-2 appears to have intermediate measures for both movement and charisma, causing us to affectionately refer to it as the "boring" line, and later christening it after Mark Corrigan from *Peep Show*.] the fishes tend not to show a strong preference for co-occupying a particular state for either assay component, but the diagonal spread indicates that they tend to move at similar speeds. When paired with the faster moving \definecolor{21-2 (‘Amelia’)_49B500}{HTML}{49B500}\textcolor{21-2 (‘Amelia’)_49B500}{21-2 (‘Amelia’)}, the novel object component appears to accentuate the co-occupancy of state 3 that is also observed in the open field component. Finally, when paired with line \definecolor{40-1 (‘Max’)_93AA00}{HTML}{93AA00}\textcolor{40-1 (‘Max’)_93AA00}{40-1 (‘Max’)},^[Line 40-1 and its sibling line 40-2 both appeared preternaturally bold, just like the siblings Max and Moritz from the eponymous story by Wilhelm Busch [@buschMaxUndMoritz2015].] in both assay components, both fishes show a strong preference for the faster-moving states.

(ref:F0-sge-cooc-heat) Heatmaps for a selection of MIKK panel lines (including those ultimately selected as the parental strains in the F~2~-cross) showing the frequency of HMM states simultaneously occupied by the reference (x-axis) and test (y-axis) fishes during the open field (**A**) and novel object (**B**) assay components, aggregated over all replicates for each line. 

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/0.08_15_cooc_heatmap} \caption{(ref:F0-sge-cooc-heat)}(\#fig:F0-sge-cooc-heat)
\end{figure}

### Deviation of *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* from its control condition

The second method for quantifying the level of behavioural transmission from test fish to *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* reference fish was to determine the proportion of time that the *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* spent in a particular state when paired with another *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}*, and then quantify the degree to which those proportions change when in the presence of a fish from another line (**Figure \@ref(fig:F0-sge-deviation)**). **Figure \@ref(fig:F0-sge-deviation)A** presents boxplots for state frequencies for all *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* individuals in *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}*-*\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* pairings. I further calculated the state frequencies for all *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* reference fishes for all other MIKK line pairings. For each combination of assay component, line-pairing, and HMM state, I then ran Welch's t-test [@ruxtonUnequalVarianceTtest2006] comparing the proportions of time the *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* individuals spent in that state when paired with another *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}*, against the proportions of time the *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* reference individuals spent in that state when paired with a different MIKK line. I then summed the t-statistics across states to generate a single metric for each combination of line and assay component, and plotted the results in **Figure \@ref(fig:F0-sge-deviation)B**.

(ref:F0-sge-deviation) Deviation of state frequency for *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* reference fishes when paired with MIKK panel lines relative to when paired with another *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}*. **A**: Boxplots of HMM state frequency for *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* individuals when paired with another *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}*. **B**: Summed absolute t-statistics (Welch's t-test) comparing the proportions of time *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* spent in each state when paired with another *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}*, against when paired with a MIKK panel line.

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/0.08_15_deviation} \caption{(ref:F0-sge-deviation)}(\#fig:F0-sge-deviation)
\end{figure}

The first thing to note in this Figure is that *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}*'s deviations from its behaviour exhibited in the control condition tend to be smaller when paired with faster-moving fishes. This was expected given *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* is also a faster-moving fish, but it strengthens the observation that when paired with slower-moving fishes, those tank partners are causing the *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* reference fish to move slower than they would otherwise. Of the slower-moving MIKK lines, \definecolor{4-2_FC61D4}{HTML}{FC61D4}\textcolor{4-2_FC61D4}{4-2} and \definecolor{14-2_F066EA}{HTML}{F066EA}\textcolor{14-2_F066EA}{14-2} causing the largest deviations of the *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* reference fishes' behaviours from their control condition behaviour in the open field and novel object components respectively. I also observe large deviations for the moderately-moving \definecolor{106-2_00B9E3}{HTML}{00B9E3}\textcolor{106-2_00B9E3}{106-2} and \definecolor{71-1_00BECD}{HTML}{00BECD}\textcolor{71-1_00BECD}{71-1} during the novel object components. There are no clear outliers for either assay component for any of the faster moving lines.

## Selection of lines for the F~2~-cross

On the basis of the above findings, I selected 6 MIKK panel lines as the parental lines for the F~2~-cross (**Figure \@ref(fig:F0-line-mean-speed-var-select)**). Conceptually, I sought to select lines that diverged on two measures: a) bold-shy behaviours; and b) the extent to which the lines transmitted their behaviours onto their tank partners. 

As *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* is a fast-moving line, it was more difficult to detect instances where fast-moving MIKK panel lines were influencing its behaviour. I was therefore more confident of identifying slow-movement/high-charisma lines, and so to increase the likelihood of identifying genetic variants that are responsible for a stronger transmission of slow-moving behaviours, I chose two slow-movement/high-charisma lines for the F~2~-cross: \definecolor{18-2 (‘Elsa’)_FF66A6}{HTML}{FF66A6}\textcolor{18-2 (‘Elsa’)_FF66A6}{18-2 (‘Elsa’)} and \definecolor{8-2 (‘Gail’)_FF699C}{HTML}{FF699C}\textcolor{8-2 (‘Gail’)_FF699C}{8-2 (‘Gail’)}. In the event that both lines possessed the same genetic variants that influence this behavioural transmission trait, it would vastly increase the power of detecting it during the genetic linkage analysis. Both these lines were one of the most slow-moving lines, had high levels of state co-occupancy during both assay components, and \definecolor{18-2 (‘Elsa’)_FF66A6}{HTML}{FF66A6}\textcolor{18-2 (‘Elsa’)_FF66A6}{18-2 (‘Elsa’)} caused a high level of deviation from the *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* control condition.

(ref:F0-line-mean-speed-var-select) Line median (vertical axis) and line variance (horizontal axis) for individual mean speed across the full 20-minute video (i.e. both the open field and novel object assay components) as shown above in Figure \@ref(fig:mikk-mean-speed-variance), now coloured only for the lines selected as the parental strains for the F~2~-cross.

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/line_mean_speed_variance_selected} \caption{(ref:F0-line-mean-speed-var-select)}(\#fig:F0-line-mean-speed-var-select)
\end{figure}

For the slow-movement/low-charisma line, I selected \definecolor{50-2 (‘Patrick’)_BB81FF}{HTML}{BB81FF}\textcolor{50-2 (‘Patrick’)_BB81FF}{50-2 (‘Patrick’)} which exhibited a moderately slow level of movement, low within-line variance for mean speed, and low measures for both state co-occupancy and *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* deviation.^[Named after Spongebob's slow and unassuming best friend, Patrick Star.] For the high-movement/high-charisma line, I selected \definecolor{21-2 (‘Amelia’)_49B500}{HTML}{49B500}\textcolor{21-2 (‘Amelia’)_49B500}{21-2 (‘Amelia’)}. Despite its high within line variance (**Figure \@ref(fig:F2-time-dge-of)**), this potentially made it easier to detect its social genetic effects, as the slower-moving individuals appeared to transmit those behaviours strongly to their *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* tank partners, giving it a high score among fast-moving lines for state co-occupancy across both assay components. For the high-movement/low-charisma line I selected \definecolor{40-1 (‘Max’)_93AA00}{HTML}{93AA00}\textcolor{40-1 (‘Max’)_93AA00}{40-1 (‘Max’)}, as it has low within-line variance, and low-to-moderate metrics for state co-occupancy and *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* deviation. However, I note that these measures may be confounded by the possibility that \definecolor{40-1 (‘Max’)_93AA00}{HTML}{93AA00}\textcolor{40-1 (‘Max’)_93AA00}{40-1 (‘Max’)} behaves in a similar way to *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}*, which would be difficult to determine whether it was behaving differently. 

In addition to these extreme lines, I also selected a line that was intermediate for both traits in an attempt to avoid breeding incompatibilities that might arise from attempting to cross lines with such divergent behavioural traits. For this purpose I selected line \definecolor{38-2 (‘Mark’)_00C08B}{HTML}{00C08B}\textcolor{38-2 (‘Mark’)_00C08B}{38-2 (‘Mark’)} for its intermediate speed, low within-line variance for mean speed, and intermediate measures for HMM state co-occupancy and *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* deviation.

The selection of parental lines for the F~2~-cross indicating their putative position across the two axes of interest (movement, and behavioural transmission or 'charisma') are set out below in **Figure \@ref(fig:F0-line-select-schema)**.

(ref:F0-line-select-schema) Schema of the MIKK panel lines selected as the parental strains for the multi-way F~2~-cross, indicating their intended position across the two axes of interest (movement, and behavioural transmission or 'charisma').

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/line_selection_schema} \caption{(ref:F0-line-select-schema)}(\#fig:F0-line-select-schema)
\end{figure}

\clearpage
## Direct genetic effects

With these lines selected, I ran a similar analysis to what I described in \@ref(Pilot-chap), where I ran multi-way ANOVAs to determine whether certain lines differed in the proportions of time they spent in these HMM states, while including the date of assay, time of assay, tank quadrant and tank side as covariates. **Table \@ref(tab:mikk-dge-F0)** sets out the states which showed a significant difference between these 6 lines, with p-values adjusted for the False Discovery Rate (**FDR**).

\begin{table}

\caption{(\#tab:mikk-dge-F0)Significant differences in the proportion of time spent in each HMM state across test fish lines selected for the F~2~-cross for the open field and novel object assay components.}
\centering
\begin{tabular}[t]{llll}
\toprule
Assay & State & Variance explained (\%) & p-value (FDR-adjusted)\\
\midrule
\cellcolor{gray!6}{open field} & \cellcolor{gray!6}{3} & \cellcolor{gray!6}{21.53} & \cellcolor{gray!6}{2.67e-03}\\
open field & 4 & 23.28 & 1.60e-02\\
\cellcolor{gray!6}{open field} & \cellcolor{gray!6}{5} & \cellcolor{gray!6}{20.61} & \cellcolor{gray!6}{3.15e-02}\\
open field & 10 & 29.06 & 1.41e-03\\
\cellcolor{gray!6}{open field} & \cellcolor{gray!6}{12} & \cellcolor{gray!6}{24.91} & \cellcolor{gray!6}{1.45e-02}\\
\addlinespace
open field & 14 & 29.52 & 1.29e-03\\
\cellcolor{gray!6}{novel object} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{16.21} & \cellcolor{gray!6}{1.90e-02}\\
novel object & 2 & 15.14 & 4.86e-02\\
\cellcolor{gray!6}{novel object} & \cellcolor{gray!6}{4} & \cellcolor{gray!6}{26.90} & \cellcolor{gray!6}{5.21e-03}\\
novel object & 5 & 27.84 & 4.27e-03\\
\addlinespace
\cellcolor{gray!6}{novel object} & \cellcolor{gray!6}{10} & \cellcolor{gray!6}{23.73} & \cellcolor{gray!6}{2.81e-02}\\
\bottomrule
\end{tabular}
\end{table}

**Figures \@ref(fig:F2-time-dge-of)** and **\@ref(fig:F2-time-dge-no)** highlight the states that showed significant differences in the proportions of time that these lines spent in those states for the open field and novel object assay components respectively. In both figures, **A** highlights the significant states, **B** shows how the individuals moved through those states over the course of the 10-minute assay component, and **C** shows the densities of the significant states within each line. For the open field component, although the tile plots show a notable level of variance within each line, the density plots clarify how the three slow-moving lines (\definecolor{8-2 (‘Gail’)_FF699C}{HTML}{FF699C}\textcolor{8-2 (‘Gail’)_FF699C}{8-2 (‘Gail’)}, \definecolor{18-2 (‘Elsa’)_FF66A6}{HTML}{FF66A6}\textcolor{18-2 (‘Elsa’)_FF66A6}{18-2 (‘Elsa’)} and \definecolor{50-2 (‘Patrick’)_BB81FF}{HTML}{BB81FF}\textcolor{50-2 (‘Patrick’)_BB81FF}{50-2 (‘Patrick’)}) spent little time in the fast-moving states 10, 12 and 14 relative to the fast-moving lines. Interestingly, the intermediate line \definecolor{38-2 (‘Mark’)_00C08B}{HTML}{00C08B}\textcolor{38-2 (‘Mark’)_00C08B}{38-2 (‘Mark’)} tended to transition into these states around the middle of the video, presumably a period of habituating to the new environment.

(ref:F2-time-dge-of) Differences between MIKK F~0~ lines in the HMM states they occupied during the *open field* assay component. **A**: 15 HMM states with panels coloured red to indicate significant differences between MIKK F~0~ lines in the proportion of time spent in those states. **B**: Transitions between HMM states across time for each individual test fish, grouped by MIKK line Tiles are coloured by the state most frequently occupied by each fish within 2-second intervals. **C**: Densities within each MIKK line for the occupation of states that significantly differed between strains (colour), with other states consolidated (grey).

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/select_0.08_15_dge_of} \caption{(ref:F2-time-dge-of)}(\#fig:F2-time-dge-of)
\end{figure}

During the novel object component the HMM states that showed significant differences between lines were mostly restricted to the slow-moving states with the exception of state 10, which most clearly distinguishes the slow-moving lines from the intermediate- and fast-moving lines. Again, the intermediate line \definecolor{38-2 (‘Mark’)_00C08B}{HTML}{00C08B}\textcolor{38-2 (‘Mark’)_00C08B}{38-2 (‘Mark’)} shows a sharp drop in the occupation of the slow moving states after a period of habituation.

(ref:F2-time-dge-no) Differences between MIKK F~0~ lines in the HMM states they occupied during the *novel object* assay component. **A**: 15 HMM states with panels coloured red to indicate significant differences between MIKK F~0~ lines in the proportion of time spent in those states. **B**: Transitions between HMM states across time for each individual test fish, grouped by MIKK line Tiles are coloured by the state most frequently occupied by each fish within 2-second intervals. **C**: Densities within each MIKK line for the occupation of states that significantly differed between strains (colour), with other states consolidated (grey).

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/select_0.08_15_dge_no} \caption{(ref:F2-time-dge-no)}(\#fig:F2-time-dge-no)
\end{figure}

### Social genetic effects

To confirm whether the *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* reference fishes altered their behaviour depending on the MIKK F~0~ line of their tank partner, I carried out the same analysis and model as above using only data from the *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* reference fishes. The states that showed a significant difference across any of the variables included in the model are set out in **Table \@ref(tab:mikk-sge-F0)**. The iCab reference fishes differed significantly in the proportion of time they spent in a given state depending on the strain of their tank partner ($p$ < 0.05, FDR-adjusted) for 4 out of 15 states in the open field assay (1.26x10^-2^ < $p$ < 4x10^-2^), and 4 out of 15 states for the novel object assay (7.71x10^-3^ < $p$ < 1.34x10^-2^). The line of the tank partner explained up to ~29% of the variance in the proportion of time the *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* reference spent in a given state. Full tables for all states and variables are provided in the Supplementary Material. 

\begin{table}

\caption{(\#tab:mikk-sge-F0)Significant differences in the proportion of time spent in each HMM state by iCab reference fishes depending on the MIKK F0 line of their tank partner during the open field and novel object assay components.}
\centering
\begin{tabular}[t]{llll}
\toprule
Assay & State & Variance explained (\%) & p-value (FDR-adjusted)\\
\midrule
\cellcolor{gray!6}{open field} & \cellcolor{gray!6}{3} & \cellcolor{gray!6}{14.93} & \cellcolor{gray!6}{2.10e-02}\\
open field & 4 & 13.60 & 2.28e-02\\
\cellcolor{gray!6}{open field} & \cellcolor{gray!6}{5} & \cellcolor{gray!6}{15.33} & \cellcolor{gray!6}{1.26e-02}\\
open field & 7 & 14.26 & 4.00e-02\\
\cellcolor{gray!6}{novel object} & \cellcolor{gray!6}{4} & \cellcolor{gray!6}{14.33} & \cellcolor{gray!6}{1.23e-02}\\
\addlinespace
novel object & 5 & 14.38 & 1.15e-02\\
\cellcolor{gray!6}{novel object} & \cellcolor{gray!6}{9} & \cellcolor{gray!6}{24.61} & \cellcolor{gray!6}{1.34e-02}\\
novel object & 11 & 28.77 & 7.71e-03\\
\bottomrule
\end{tabular}
\end{table}

(ref:F2-time-sge-of) Differences between HMM states occupied by the reference fish when paired with different MIKK F~0~ lines during the open field assay component. **A**: 15 HMM states with panels coloured red to indicate significant differences between the reference fishes under different line-pairings in the proportion of time spent in those states. The HMM states are the same as those in **Figure \@ref(fig:F2-time-dge-of)** above, but coloured with a different palette. **B**: Transitions between HMM states across time for each individual *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* reference fish, grouped by the strain of its tank partner. Tiles are coloured by the state most frequently occupied by each fish within 2-second intervals. **C**: Densities within each strain-pairing for the occupation of states that significantly differed between strain-pairings (colour), with other states consolidated (grey).

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/select_0.08_15_sge_of} \caption{(ref:F2-time-dge-of)}(\#fig:F2-time-sge-of)
\end{figure}

(ref:F2-time-sge-no) Same layout as **Figure \@ref(fig:F2-time-sge-of)** above, but for the novel object assay.

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/select_0.08_15_sge_no} \caption{(ref:F2-time-dge-no)}(\#fig:F2-time-sge-no)
\end{figure}

To assist with interpretation of the relationships between the HMM states and the types of behaviours exhibited, I have provided in **Appendix \@ref(four-panel-app)** four-panel plots showing a) a frame grab from the raw four-quadrant video; b) path plots for both fishes; c) path plots for the test fishes coloured by HMM state; and d) path plots for the reference fishes coloured by HMM state, all taken at the 300-second mark (5 minutes) of each 10-minute assay component. 

\clearpage
## F~2~ generation

### Behavioural data collection

<!--
[CLEARLY UNDERPOWERED. GOAL WAS TO GENERATE 100 PER CROSS. STRATEGY HAS CHANGED BECAUSE WE DIDN'T GENERATE ENOUGH. ORIINALLY, WITHOUT THE COVID ISSUE, WE WOULD HAVE ANALYSED EACH CROSS AS WELL AS JOINTLY, NOW WE'RE JUST GOING TO DO THE JOIN ANALYSIS. THIS IS NOT THE TRADITIONAL WAY OF ANALYSING AN F2. TAKING AN F2 SET AND MAKING IT LIKE A FARM ANIMAL PEDIGREE. ADD TO INTRO]
-->

Around August 2019, my collaborators in the Loosli Group at KIT commenced the breeding program for this experiment with the 6 MIKK panel lines I had selected above. The goal was to generate around 100 F~2~ individuals per cross, for a total F~2~ sample size of around 1000, and to run genetic association analyses for each cross separately, as well as all crosses together. However, from around mid-2020, the F~1~ generation began to reproduce very poorly, and after lengthy investigations, our collaborators discovered that the Covid pandemic had caused disruptions to the supply chains of their fish food manufacturer, which had compelled the manufacturer to modify the recipe, and this modification was the cause of the poor breeding. While the issue has since been resolved, it has resulted in a much smaller number of F~2~ individuals to be produced than was originally anticipated. As a consequence, I was compelled to analyse the dataset in the style of a joint pedigree (that is, a multi-way F~2~-cross), as has been performed with farm animals such as the pig [@tortereauCombiningTwoMeishan2010; @tangIdentificationLociAffecting2017].

From 17 November 2021 to 5 May 2022, a Research Assistant in Prof. Loosli's lab, Alicia Günthel, performed the assay 69 time with F~2~ individuals from the 12 crosses they had bred, producing a total of 271 videos of pairs of fish. The counts for the 12 crosses used to generate these 271 test fishes are set out in **Table \@ref(tab:F2-cross-counts)**. <!--This much smaller F~2~ sample size prevented us from analysing each cross separately (as one would do for a traditional F~2~-cross), and so I was restricted to performing only the joint analysis in the similar way to a farm animal pedigree (REFER TO RELEVANT INTRO SECTION).-->

\begin{table}

\caption{(\#tab:F2-cross-counts)Significant differences in the proportion of time spent in each HMM state by iCab reference fishes depending on the MIKK F~0~ line of their tank partner during the open field and novel object assay components.}
\centering
\begin{tabular}[t]{llr}
\toprule
paternal line & maternal line & count\\
\midrule
\cellcolor{gray!6}{21-2} & \cellcolor{gray!6}{40-1} & \cellcolor{gray!6}{60}\\
38-2 & 40-1 & 57\\
\cellcolor{gray!6}{38-2} & \cellcolor{gray!6}{18-2} & \cellcolor{gray!6}{35}\\
8-2 & 40-1 & 24\\
\cellcolor{gray!6}{50-2} & \cellcolor{gray!6}{18-2} & \cellcolor{gray!6}{23}\\
\addlinespace
38-2 & 21-2 & 19\\
\cellcolor{gray!6}{8-2} & \cellcolor{gray!6}{38-2} & \cellcolor{gray!6}{15}\\
50-2 & 38-2 & 12\\
\cellcolor{gray!6}{18-2} & \cellcolor{gray!6}{21-2} & \cellcolor{gray!6}{7}\\
21-2 & 50-2 & 7\\
\addlinespace
\cellcolor{gray!6}{40-1} & \cellcolor{gray!6}{50-2} & \cellcolor{gray!6}{6}\\
50-2 & 8-2 & 6\\
\bottomrule
\end{tabular}
\end{table}

I again used *idtrackerai* [@romero-ferreroIdtrackerAiTracking2019] to track the F~2~ individuals across frames. When splitting the 271 videos of pairs of fish into their open field and novel object assay components for a total of 542 videos, for 526 of them both fish were tracked across at least 85% of frames. I only used these 526 videos in the downstream analysis, but prior to publication I will seek to improve the tracking process so that the excluded individuals can be incorporated in the dataset.

### Behavioural phenotyping

To ensure that the predicted HMM states for behaviour were consistent across both F~0~ and F~2~ generations, I had included these F~2~ individuals for training and prediction in the models described above. I again calculated the proportions of time that every individual spent in each state ("**state frequency**"), then inverse-normalised^[See section \@ref(inverse-norm-sec) in Chapter \@ref(Somite-chap) for a description of this process.] the values within each combination of assay component (open field or novel object) and state (1 to 15). 

**Figures \@ref(fig:F2-state-freq-dge)** and **\@ref(fig:F2-state-freq-sge)** compares the phenotype pre- and post-transformation with this normalisation approach. For the higher-movement states there are increasing numbers of individuals who spent no time in those states, which are responsible for the apparently non-normal distributions observed for the skewed distributions post-transformation. States 1, 3, 6, 8, 9 and 11 already appear to have a large amount of variation between individuals, but this normalisation process will increase the variance for states where there is small, yet potentially meaningful, variation between individuals. One exception may perhaps be state 15, which involves very large distances of travel in all directions, and therefore may correspond to tracking errors. 

(ref:F2-state-freq-dge) Effect of inverse-normalisation on the HMM state frequency of the F~2~ test fishes.

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/0.08_15_state_freq_F2_dge} \caption{(ref:F2-state-freq-dge)}(\#fig:F2-state-freq-dge)
\end{figure}

(ref:F2-state-freq-sge) Effect of inverse-normalisation on the HMM state frequency of the F~2~ *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* reference fishes.

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/0.08_15_state_freq_F2_sge} \caption{(ref:F2-state-freq-sge)}(\#fig:F2-state-freq-sge)
\end{figure}

### Genotyping

After phenotyping the F~2~ samples, our collaborators in the Loosli Group at KIT took clippings from the fins of the F~2~ individuals, extracted their DNA, and arranged for them to be shallow-sequenced on the Illumina short-read platform at a coverage of ~1x per sample. Using a similar method to what I described in Chapter \@ref(Somite-chap), I aligned these sequences to the *HdrR* reference with *BWA-MEM2* [@vasimuddinEfficientArchitectureawareAcceleration2019], sorted the reads and marked duplicates with Picard [@Picard2019toolkit], then indexed the resulting BAM files with *SAMtools* [@danecekTwelveYearsSAMtools2021]. I then used *bam-readcount* [@khannaBamreadcountRapidGeneration2022] to count the reads that supported either the paternal or the maternal allele for all biallelic SNPs that were homozygous-divergent in the given sample's two parental strains (i.e. homozgyous reference in the paternal line, and homozygous alternative in the maternal line, or *vice versa*), summed the read counts within 5 kb blocks, and calculated the frequency of reads within each bin that supported the maternal allele. This generated a value for each bin between 0 and 1, where 0 signified that all reads within that bin supported the paternal allele, and 1 signified that all reads within that bin supported the maternal allele. Bins containing no reads were imputed with a value of 0.5. 

I then used these values for all F~2~ individuals as the input to a Hidden Markov Model (HMM) with the software package *hmmlearn* [@HmmlearnHmmlearn2022], which I applied to classify each bin as one of three states, with state 0 corresponding to homozygous for the paternal allele, 1 corresponding to heterozygous, and 2 corresponding to homozygous for the maternal allele. Across each chromosome of every sample, the output of the HMM was expected to produce a sequence of states. Based on previous analyses described in Chapter \@ref(Somite-chap), I used the same HMM parameters as I did there, and used the HMM state outputs to generate the recombination blocks shown in **Figure \@ref(fig:F2-recomb-blocks)**. Missing genotype state calls arose from a sample having insufficient reads within a bin, for which I imputed the missing state calls within each sample's chromosome based on the previous state call on that chromosome. A karyoplot retaining the missing blocks is provided in **Appendix \@ref(fig:F2-recomb-blocks-missing)**. Unfortunately, there appear to be many missing HMM state calls for chromosomes 22 and 23, and this may be caused by the small number of homozygous-divergent variants that reside in those chromosomes, as I explore below in the Conclusions chapter of this thesis.

(ref:F2-recomb-blocks) Karyoplot for F~2~ samples, coloured by genotype. Samples are sorted in the order in which they were phenotyped. Blocks are filled with the colour of the paternal F~0~ line for the homozygous paternal haplotype block, black for heterozygous, and the colour of the maternal F~0~ line for the homozygous maternal haplotype block. Missing calls were imputed based on the previous successful call on a given chromosome. 

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/karyoplot_no_missing} \caption{(ref:F2-recomb-blocks)}(\#fig:F2-recomb-blocks)
\end{figure}

**Figure \@ref(fig:F2-prop-sites)** sets out the genome-wide frequency of bins that were called as either homozygous paternal, heterozygous, or homozygous maternal for each individual, grouped by cross. In accordance with Mendel's law of segregation, the expected frequencies are 0.25, 0.5, and 0.25 respectively. Despite the relatively low sample sizes for each cross, the observed frequencies are generally consistent with these expected frequencies, with notable exceptions for the crosses involving \definecolor{21-2 (‘Amelia’)_49B500}{HTML}{49B500}\textcolor{21-2 (‘Amelia’)_49B500}{21-2 (‘Amelia’)}, where that line contributed a frequency of nearly 0 bins in the four crosses it was used for. This may have been caused by some hybrid incompatibility between line \definecolor{21-2 (‘Amelia’)_49B500}{HTML}{49B500}\textcolor{21-2 (‘Amelia’)_49B500}{21-2 (‘Amelia’)} and the other MIKK panel lines used in these crosses, where an excess of genes from line \definecolor{21-2 (‘Amelia’)_49B500}{HTML}{49B500}\textcolor{21-2 (‘Amelia’)_49B500}{21-2 (‘Amelia’)} rendered the individual non-viable, and therefore did not reach the developmental stage where they could be assayed. There also appears to be an issue with the cross between \definecolor{50-2 (‘Patrick’)_BB81FF}{HTML}{BB81FF}\textcolor{50-2 (‘Patrick’)_BB81FF}{50-2 (‘Patrick’)} and \definecolor{8-2 (‘Gail’)_FF699C}{HTML}{FF699C}\textcolor{8-2 (‘Gail’)_FF699C}{8-2 (‘Gail’)}, where the genotypes are skewed away from \definecolor{50-2 (‘Patrick’)_BB81FF}{HTML}{BB81FF}\textcolor{50-2 (‘Patrick’)_BB81FF}{50-2 (‘Patrick’)}, although the small sample size for that cross makes it difficult to confirm. 

(ref:F2-prop-sites) Frequencies of bins within each individual called as either homozygous for the paternal allele, heterozygous, or homozygous for the maternal allele. 

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/prop_sites} \caption{(ref:F2-prop-sites)}(\#fig:F2-prop-sites)
\end{figure}

I was nevertheless satisfied that the concordance between our observed genotypes and their expected frequencies indicated that our HMM genotyping was sufficiently robust. I therefore proceeded to use these HMM-generated haplotype block calls to impute each sample's SNP-level genotypes using the homozygous biallelic SNP calls in the high-coverage .vcf file for the MIKK panel F~0~ lines described in Chapter \@ref(MIKK-genomes-chap). This set of variants included a total of ~20.7M SNPs, which I used to generate a Plink-format .bed file, forming the genotype input for the genetic linkage analysis.

### F~2~-cross GWAS

#### GRM

For the purpose of using the *GCTA* software package [@yangGCTAToolGenomewide2011] for the genetic association testing, I was required to construct a genetic relationship matrix (**GRM**) in the manner described in the Introduction (Equations \@ref(eq:grmstd) and \@ref(eq:grm)). I first filtered the .bed for SNPs that had no missing calls for any samples ($M_{SNPs}$ = 44,360). I then used these SNPs to construct a "leave-one-chromosome-out" (**LOCO**) genetic relationship matrix for each chromosome -- that is, if the "focal" chromosome was chr1, I would exclude the SNPs on that chromosome before constructing the GRM. To illustrate, **Figure \@ref(fig:F2-grm)** is a GRM constructed using all 44,360 non-missing SNPs. However, given the relatively small amount of non-missing SNPs on each chromosome, the number of SNPs on the focal chromosome that were excluded was small, resulting in GRMs that appear almost identical by eye -- see the LOCO-GRM for chromosome 1 in **Appendix \@ref(fig:loco-grm-chr1)**. In contrast to the GRM presented in the previous Chapter (Figure \@ref(fig:somite-grm)), which was based on a single F~2~-cross and looked relatively homogenous, here the individuals from each separate cross neatly cluster together, and the individuals that share one parental strain cluster nearby.

(ref:F2-grm) Genetic relationship matrix (GRM) for 271 F~2~ samples based on 44,360 non-missing SNPs.

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/grm_man_0.8} \caption{(ref:F2-grm)}(\#fig:F2-grm)
\end{figure}

#### Heritability

I used the above GRM with GCTA [@yangGCTAToolGenomewide2011] to calculate the narrow-sense heritability ($h^2$) of the inverse-normalised proportions of time the fish spent in each state (direct genetic effects), and for the proportions of time their tank partners spent in each state (social genetic effects) (**Figure \@ref(fig:F2-heritability)**). For direct genetic effects (**Figure \@ref(fig:F2-heritability)A**), the maximum estimates are smaller than expected, with a maximum $h^2$ of 0.173 for state 2 during the open field assay component. There is also higher heritability detected through the open field assay than the novel object assay. Interestingly, the somewhat wider- and forward-moving state 6 shows no heritability, which indicates that the proportions of time spent in that state is not affected by genetics. The heritability estimates for social genetic effects (**Figure \@ref(fig:F2-heritability)B**) are near 0, with a slight exception for the straighter- and forward-moving state 8 in the novel object assay, which also showed significant differences between the F~0~ lines.

(ref:F2-heritability) Narrow-sense heritability ($h^2$) computed by GCTA [@yangGCTAToolGenomewide2011; @yangGenomePartitioningGenetic2011] based on all non-missing SNPs used to generate the GRM ($N$ = 44,360), for direct genetic effects (**A**) and social genetic effects (**B**). 

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/heritability} \caption{(ref:F2-heritability)}(\#fig:F2-heritability)
\end{figure}

#### GWAS

For the association testing, I used a linear mixed model (**LMM**) as implemented in GCTA [@yangGCTAToolGenomewide2011]. For the phenotype, I used the inverse-normalised state frequencies described above, and the LOCO-GRM for all SNPs on the focal chromosome. That is to say, for all SNPs on chr18, I used the LOCO-GRM that excluded all SNPs from that chromosome. In addition, I included the time of assay and the tank quadrant as covariates, which the software regresses out from the phenotype prior to running the LMM. I excluded the date of assay and the tank side as covariates because individuals from the same cross tended to be assayed in the same test tank on the same day, making those covariates confounded with the individuals' genetics. 

To set a significance threshold, for each combination of HMM state and assay, I ran 10 LMM tests over the same dataset where I had permuted the phenotype and covariates using a different random seed. The logic behind this method is to determine the lowest p-value that one could expect when there is no true relationship between the individuals' genetics and their phenotype. I then extracted the smallest p-value from all 10 results, and used this as the significance threshold. I additionally calculated the Bonferroni threshold as $\alpha / M$, where $\alpha$ is set to 0.05 and $M$ is the total number of SNPs in the dataset (2,726,797) = 1.83 x 10^-8^.

#### Direct genetic effects

For the DGE phenotypes (comparing the state frequencies across test fishes), I sought to identify the genetic loci in the F~2~ individuals that were associated with differences in their own behaviour. For neither the open field nor novel object component did the p-values exceed the Bonferroni threshold, however a number of loci across several chromosomes exceeded the thresholds set by the permutations. I plotted the p-values in Manhattan plots for each combination of state and assay component, and provide them all in the Appendix. Here I showcase the Manhattan plot for state 3, containing a number of significant loci that I discuss further below.

(ref:F2-man-dge-no-3) Manhattan plot for inverse-normalised HMM state 3 frequency of F~2~ test fishes during the novel object assay.

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/manhattans/dge_no_3_time-quadrant} \caption{(ref:F2-man-dge-no-3)}(\#fig:F2-man-dge-no-3)
\end{figure}

#### Social genetic effects

For social genetic effects, I was attempting to discover genetic variants in the F~2~ individuals that caused differences in the behaviour of their *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* tank partners. As expected, and consistent with the heritability results, fewer loci reached significance for this transmitted indirect genetic effect than for the direct genetic effects, however I still found several significant loci based on the permutations threshold for states 4 (chr4), 7 (chr1), 12 (chr11), and 13 (chr12) during the open field assay component; but only one, barely significant SNP for state 5 (chr 13) during the novel object assay. This difference was somewhat surprising given our previous suppositions in Chapter \@ref(Pilot-chap) that the novel object component drew out stronger social genetic effects. One possible explanation is that even though the differences between line pairings appear more pronounced in the novel object assay component, it is more difficult to map variants associated with these differences because a greater proportion of the variance is driven by non-genetic sources. Another possibility is that the behaviours exhibited in the novel object assay have a more complex genetic architecture.

(ref:F2-man-sge-of-13) Manhattan plot for inverse-normalised HMM state 3 frequency of *\definecolor{iCab_424B4D}{HTML}{424B4D}\textcolor{iCab_424B4D}{iCab}* reference fishes during the novel object assay component.

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/manhattans/sge_of_13_time-quadrant} \caption{(ref:F2-man-sge-of-13)}(\#fig:F2-man-sge-of-13)
\end{figure}


### Candidate loci for CRISPR-knockouts




#### Missense variants

The next goal was to attempt to identify the SNPs that are mostly likely to be the causal variants, or closest in proximity to the causal variants, that are responsible for differences in the phenotypes of interest. I therefore proceeded to extract the significant SNPs and use Ensembl's Variant Effect Predictor (**VEP**) [@mclarenEnsemblVariantEffect2016] to identify the SNPs that are most likely to have a functional consequence, and determine whether the genes they reside in have already been identified as being involved in biological pathways that could be related to behaviour. **Table \@ref(tab:F2-sig-snps-consq-counts)** shows the counts for the different potential consequences of the unique significant SNPs, based on Ensembl's annotation of the *HdrR* reference genome. I note that as multiple genes can overlap the same locus (including those transcribed from opposing strands), one SNP may map to multiple genes and therefore be counted as having more than one type of consequence.

\begin{table}

\caption{(\#tab:F2-sig-snps-consq-counts)Counts for consequences of significant SNPs.}
\centering
\begin{tabular}[t]{lr}
\toprule
consequence & count\\
\midrule
\cellcolor{gray!6}{intron\_variant} & \cellcolor{gray!6}{349}\\
intergenic\_variant & 178\\
\cellcolor{gray!6}{upstream\_gene\_variant} & \cellcolor{gray!6}{92}\\
downstream\_gene\_variant & 75\\
\cellcolor{gray!6}{synonymous\_variant} & \cellcolor{gray!6}{9}\\
\addlinespace
3\_prime\_UTR\_variant & 6\\
\cellcolor{gray!6}{missense\_variant} & \cellcolor{gray!6}{6}\\
5\_prime\_UTR\_variant & 3\\
\cellcolor{gray!6}{splice\_acceptor\_variant} & \cellcolor{gray!6}{2}\\
splice\_region\_variant,intron\_variant & 2\\
\addlinespace
\cellcolor{gray!6}{splice\_region\_variant,synonymous\_variant} & \cellcolor{gray!6}{2}\\
splice\_donor\_variant & 1\\
\bottomrule
\end{tabular}
\end{table}

As expected, most variants reside in non-coding regions [CITE], but in an attempt to isolate the most likely causative SNPs, I extracted those that are predicted to cause a missense mutation and therefore most likely to have a functional consequence (**Table \@ref(tab:F2-sig-snps-missense)**). 

\begin{table}

\caption{(\#tab:F2-sig-snps-missense)Missense SNPs.}
\centering
\resizebox{\linewidth}{!}{
\begin{tabular}[t]{llrrrlllll}
\toprule
Genetic effect & Assay & State & Chr & Pos & Ref & Alt & Allele & Gene & Description\\
\midrule
\cellcolor{gray!6}{DGE} & \cellcolor{gray!6}{open field} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{22508288} & \cellcolor{gray!6}{A} & \cellcolor{gray!6}{C} & \cellcolor{gray!6}{C} & \cellcolor{gray!6}{ENSORLG00000009385} & \cellcolor{gray!6}{vav guanine nucleotide exchange factor 1}\\
DGE & open field & 7 & 13 & 33714439 & G & T & T & ENSORLG00000028050 & uncharacterized LOC105356481\\
\cellcolor{gray!6}{DGE} & \cellcolor{gray!6}{open field} & \cellcolor{gray!6}{10} & \cellcolor{gray!6}{3} & \cellcolor{gray!6}{28342550} & \cellcolor{gray!6}{A} & \cellcolor{gray!6}{G} & \cellcolor{gray!6}{G} & \cellcolor{gray!6}{ENSORLG00000024879} & \cellcolor{gray!6}{}\\
DGE & novel object & 3 & 1 & 31428698 & G & A & A & ENSORLG00000013962 & ecto-ADP-ribosyltransferase 5-like\\
\cellcolor{gray!6}{DGE} & \cellcolor{gray!6}{novel object} & \cellcolor{gray!6}{3} & \cellcolor{gray!6}{10} & \cellcolor{gray!6}{15319434} & \cellcolor{gray!6}{C} & \cellcolor{gray!6}{T} & \cellcolor{gray!6}{T} & \cellcolor{gray!6}{ENSORLG00000029574} & \cellcolor{gray!6}{}\\
\addlinespace
DGE & novel object & 3 & 10 & 15319434 & C & T & T & ENSORLG00000024866 & protocadherin alpha-C2-like\\
\cellcolor{gray!6}{DGE} & \cellcolor{gray!6}{novel object} & \cellcolor{gray!6}{10} & \cellcolor{gray!6}{10} & \cellcolor{gray!6}{15319434} & \cellcolor{gray!6}{C} & \cellcolor{gray!6}{T} & \cellcolor{gray!6}{T} & \cellcolor{gray!6}{ENSORLG00000029574} & \cellcolor{gray!6}{}\\
DGE & novel object & 10 & 10 & 15319434 & C & T & T & ENSORLG00000024866 & protocadherin alpha-C2-like\\
\cellcolor{gray!6}{SGE} & \cellcolor{gray!6}{open field} & \cellcolor{gray!6}{13} & \cellcolor{gray!6}{12} & \cellcolor{gray!6}{5136828} & \cellcolor{gray!6}{G} & \cellcolor{gray!6}{A} & \cellcolor{gray!6}{A} & \cellcolor{gray!6}{ENSORLG00000002961} & \cellcolor{gray!6}{complement C9}\\
\bottomrule
\end{tabular}}
\end{table}

One SNP, 10:15,319,434, was significant in respect of DGE for frequencies in both state 3 (**Figure \@ref(fig:sig-snp-10-15mb)**) and 10 during the novel object assay (see **Figure \@ref(fig:F2-man-dge-no-3)** above for state 3), and maps to two genes: ENSORLG00000029574 and ENSORLG00000024866. ENSORLG00000029574 is a novel gene on the forward strand with no recorded phenotypes. Based on discussions with an expert on genetic prediction, it is most likely that this was a mis-prediction. However, on the reverse strand of this locus is ENSORLG00000024866, a gene for protocadherin alpha-C2-like, a well-known protein involved in mammalian synapse formation [@junghansPostsynapticDifferentialLocalization2008; @phillipsGProtocadherinsAreTargeted2003].

(ref:sig-snp-10-15mb) State 3 frequency during the novel object assay for counts of the alternative allele (T) at SNP 10:15,319,434 in the protocadherin gene. The boxes are coloured on the left by the paternal line, and on the right by the maternal line.

\begin{figure}

{\centering \includegraphics[width=0.5\linewidth]{figs/mikk_behaviour/sig_snps_boxplots/3-10:15319434} 

}

\caption{(ref:sig-snp-10-15mb)}(\#fig:sig-snp-10-15mb)
\end{figure}

The second predicted missense variant of note was detected for SGE in the open field assay for frequencies in state 13. The locus 12:5,136,828 maps to gene ENSORLG00000002961, which is described as a complement *C9* (**Figure \@ref(fig:sig-snp-12-5mb)**). Discovered phenotypes for species orthologues include reduced prepulse inhibition and heart phenotypes in mice [Mouse Genome Database, @blakeMouseGenomeDatabase2021], and neurodevelopmental disorders in rats [Rat Genome Database, @smithYearRatRat2020]. Here, in the F~2~ individuals, it appears to have a complex effect on the behaviour of the test fishes between the crosses, where it apparently causes the reference fish to increase the proportion of time it spends in the fast-moving state 13 (**Figure \@ref(fig:F2-man-sge-of-13)**).

(ref:sig-snp-12-5mb) State 13 frequency during the open field assay for counts of the alternative allele (A) at SNP 12:5,136,828. The boxes are coloured on the left by the paternal line, and on the right by the maternal line.

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/sig_snps_boxplots/13-12:5136828} \caption{(ref:sig-snp-12-5mb)}(\#fig:sig-snp-12-5mb)
\end{figure}

The evidence from these loci is mixed. For the first missense SNP at 10:15,319,434, only one cross has data for more than one genotype, and is therefore informative (DGE, 38-2 x 18-2), however in this cross there is a clear effect. For the second missense SNP at 12:5,136,828, although three crosses are informative, there are few data points for two of them (18-2 x 21-2 and 21-2 x 50-2), the latter of which is showing an effect in the opposite direction to the other two. Like the first missense SNP at 10:15,319,434, many significant SNPs are missing calls for a number of crosses, likely due to the parental strains having missing calls at those loci in the high-coverage MIKK panel .vcf from which I imputed the F~2~ calls. With the exception of chromosomes 22 and 23 (which are often missing HMM state calls, making it impossible to genotype those individuals), for all other chromosomes I imputed the genotypes directly from the high-coverage MIKK panel .vcf file, so if any crosses are missing genotypes, it must be because there are missing genotype calls for either of their two parental strains in that .vcf file. This in turn may have been caused by a failure to detect larger genomic variation with the short-read Illumina platform that was used to sequence them, and may therefore be overcome by combining those short reads with Oxford Nanopore Technologies long-read sequences as I did in Chapter \@ref(mikksv-sec). 

#### Other potentially causal variants 

There are additional significant loci of note shown in **Figure \@ref(fig:F2-man-dge-no-3)** above that are not predicted to alter proteins, but nevertheless appear to affect genes related to neurological development. **Table \@ref(tab:tbl-sig-snp-chr-9-10)** sets out five of these loci, followed by a brief description of each.

\begin{table}

\caption{(\#tab:tbl-sig-snp-chr-9-10)Notable significant SNPs for direct genetic effects.}
\centering
\resizebox{\linewidth}{!}{
\begin{tabular}[t]{llrrrlllll}
\toprule
Genetic effect & Assay & State & Chr & Pos & Ref & Alt & Gene & Description & Human homologue\\
\midrule
\cellcolor{gray!6}{DGE} & \cellcolor{gray!6}{open field} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{18} & \cellcolor{gray!6}{15178810} & \cellcolor{gray!6}{G} & \cellcolor{gray!6}{T} & \cellcolor{gray!6}{ENSORLG00000006940} & \cellcolor{gray!6}{RELT like 1} & \cellcolor{gray!6}{RELL1}\\
DGE & open field & 8 & 5 & 24433800 & C & A & ENSORLG00000012418 & claudin 19 & CLDN19\\
\cellcolor{gray!6}{DGE} & \cellcolor{gray!6}{novel object} & \cellcolor{gray!6}{3} & \cellcolor{gray!6}{9} & \cellcolor{gray!6}{9802754} & \cellcolor{gray!6}{C} & \cellcolor{gray!6}{A} & \cellcolor{gray!6}{ENSORLG00000024663} & \cellcolor{gray!6}{glutamate ionotropic receptor delta type subunit 2} & \cellcolor{gray!6}{GRID2}\\
DGE & novel object & 3 & 10 & 18537719 & C & A & ENSORLG00000006464 & neuroligin 3a & NLGN3\\
\cellcolor{gray!6}{DGE} & \cellcolor{gray!6}{novel object} & \cellcolor{gray!6}{9} & \cellcolor{gray!6}{6} & \cellcolor{gray!6}{30807013} & \cellcolor{gray!6}{T} & \cellcolor{gray!6}{A} & \cellcolor{gray!6}{ENSORLG00000016329} & \cellcolor{gray!6}{pannexin 2} & \cellcolor{gray!6}{PANX2}\\
\bottomrule
\end{tabular}}
\end{table}

##### *RELL1*

The locus around 18:15,178,810 was significant for DGE state 1 (almost no movement) during the open field assay, and is situated within in the RELT like 1 (*RELL1*) gene (ENSORLG00000006940). Values for the frequency of time the test fishes spent in HMM state 1 during the open field assay based on the genotypes for this locus is set out in **Figure \@ref(fig:sig-snp-18-15mb)**. The orthologue for this gene has been found to be associated with abnormal auditory brainstem response and hyperactivity in mouse [Mouse Genome Database, @blakeMouseGenomeDatabase2021].

(ref:sig-snp-18-15mb) State 2 frequency during the open field assay for counts of the alternative allele (T) at 18:15,178,810. The boxes are coloured on the left by the paternal line, and on the right by the maternal line.

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/sig_snps_boxplots/1-18:15178810} \caption{(ref:sig-snp-18-15mb)}(\#fig:sig-snp-18-15mb)
\end{figure}

##### *CLDN19*

The locus around 5:24,433,800 was significant for DGE state 8 (straight-forward movement, medium speed) during the open field assay, and maps to the claudin 19 gene (*cldn19*, ENSORLG00000012418), a projected zinc finger. Values for the frequency of time the test fishes spent in HMM state 8 during the open field assay based on the genotypes for this locus is set out in **Figure \@ref(fig:sig-snp-5-24mb)**. This locus shows a consistent direction of effect in crosses 38-2x40-1 and 50-2x18-2. Orthologues of this gene have been associated with neurological traits including impaired coordination and abnormal gait in mice [Mouse Genome Database, @blakeMouseGenomeDatabase2021].

(ref:sig-snp-5-24mb) State 8 frequency during the open field assay for counts of the alternative allele (A) at 5:24,433,800. The boxes are coloured on the left by the paternal line, and on the right by the maternal line.

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{figs/mikk_behaviour/sig_snps_boxplots/8-5:24433800} 

}

\caption{(ref:sig-snp-5-24mb)}(\#fig:sig-snp-5-24mb)
\end{figure}

##### *GRID2*

The locus around 9:9,802,754 was significant for DGE state 3 (pan-directional, slow movement) during the novel object assay, and maps to a gene for glutamate ionotropic receptor delta type subunit 2 (*grid2*, ENSORLG00000024663), an orthologue of the human gene *GRID2*. Values for the frequency of time the test fishes spent in HMM state 3 during the novel object assay based on their genotypes at this locus are set out in **Figure \@ref(fig:sig-snp-9-9mb)**. Deletions in this gene have been found to cause ataxia in humans [@hillsDeletionsGRID2Lead2013; @utineHomozygousDeletionGRID22013], and other mutations in this gene have been found to cause various neurological disorders in mice [Mouse Genome Database, @blakeMouseGenomeDatabase2021]. 

(ref:sig-snp-9-9mb) State 3 frequency during the novel object assay for counts of the alternative allele (A) at SNP 9:9,802,754. The boxes are coloured on the left by the paternal line, and on the right by the maternal line.

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/sig_snps_boxplots/3-9:9802754} \caption{(ref:sig-snp-9-9mb)}(\#fig:sig-snp-9-9mb)
\end{figure}

##### *NLGN3*

The locus around 10:18,537,719 was signficant for DGE state 3 (pan-directional, slow movement) during the novel object assay, and sits within the neuroligin 3 gene (*nlgn3a*, ENSORLG00000006464), an orthologue of the human gene *NLGN3*, which has been linked with autism in humans [@jamainMutationsXlinkedGenes2003], and various neurological in mice and rats [@blakeMouseGenomeDatabase2021; @smithYearRatRat2020]. Values for the frequency of time spent the test fishes spent in HMM state 3 during the novel object assay based on their genotypes at this locus are set out in **Figure \@ref(fig:sig-snp-10-18mb)**. 

(ref:sig-snp-10-18mb) State 3 frequency during the novel object assay for counts of the alternative allele (A) at SNP 10:18,537,719. The boxes are coloured on the left by the paternal line, and on the right by the maternal line.

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/sig_snps_boxplots/3-10:18537719} \caption{(ref:sig-snp-10-18mb)}(\#fig:sig-snp-10-18mb)
\end{figure}

##### *PANX2*

The locus around 6:30,807,013 was significant for DGE state 9 (forward-moving at medium-high speed) during the novel object assay, and is located within the pannexin 2 (*panx2*) gene (ENSORLG00000016329), a projected zinc finger orthologue with the human gene *PANX2*. Its orthologues have been associated with decreased prepulse inhibition in mice [@blakeMouseGenomeDatabase2021], and intellectual disability and autism spectrum disorder in rats [@smithYearRatRat2020]. Values for the frequency of time the test fishes spent in HMM state 9 during the novel object assay based on their genotypes at this locus are set out in **Figure \@ref(fig:sig-snp-6-30mb)**. 

(ref:sig-snp-6-30mb) State 9 frequency during the novel object assay for counts of the alternative allele (A) at 6:30,807,013. The boxes are coloured on the left by the paternal line, and on the right by the maternal line.

\begin{figure}
\includegraphics[width=1\linewidth]{figs/mikk_behaviour/sig_snps_boxplots/9-6:30807013} \caption{(ref:sig-snp-6-30mb)}(\#fig:sig-snp-6-30mb)
\end{figure}

## Discussion 

These results of this chapter confirm that the F~2~-cross method applied to the MIKK panel is a powerful technique for the discovery of loci associated with complex traits. I applied modern computational methods to first develop a data-driven analysis of fish behaviour, and then select a subset of inbred lines that diverged in both their own behaviour, and the extent to which they transmitted their behaviours to their social partners. I then performed an F~2~-cross with those lines to map the genetic variants associated with those differences. Although this analysis was clearly under-powered, I nevertheless discovered a number of statistically significant loci in orthologue genes that have been found to be related to neurological phenotypes in mice, rats, and humans. As noted above, my collaborators are in the process of generating another F~2~ generation for these crosses to increase the power of the analysis. Future work can functionally validate these loci with targeted CRISPR-Cas9 knockouts, expanding on our knowledge about the genetic and environmental contributions to trait variation through an improved ability to control both genes and social environment with inbred lines that are representative of the kinds of variation that is naturally occurring in the wild.


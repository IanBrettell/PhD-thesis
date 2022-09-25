# Classification of bold/shy behaviours in 5 inbred medaka lines {#Pilot-chap}

\chaptermark{Pilot behaviour study}



Taking advantage of the rich genetic resources offered by medaka, we and our collaborators (primarily the Loosli Group at KIT) developed a behavioural assay to examine the performance of isogenic inbred strains for an inter-strain comparative analysis of the boldness-shyness behaviour of medaka. We used a combined open-field and novel-object assay involving assaying pairs for fish, to determine: a) whether there were consistent differences in bold-shy behaviours exhibited by 5 established inbred strains of medaka fish (*iCab*, *HdrR*, and *HO5* from southern Japan, and *Kaga* and *HNI* from northern Japan); and b) whether there were consistent differences in bold-shy behaviours exhibited by a given strain (*iCab*) dependent on the strain that it was partnered with. The former was intended to measure the effect of an individual’s own genes on its behaviour (a direct genetic effect), and the latter to measure the effect of the genes of the focal fish’s tank partner on the behaviour of the focal fish (social genetic effect). Our experimental design allowed us to assess both direct and indirect effects on behaviour simultaneously, and to infer the degree to which variation in bold-shy behaviours is attributable to the differences in an individual’s own genetics, the differences in the genetics of their social companions, and stochastic variation. A schema for the experimental plan was shown in the Introduction chapter, **Figure \@ref(fig:behavioural-schema)**.

(ref:behavioural-schema) Schema for experimental plan. *iCab*-*iCab* pairings are the control condition. To explore direct genetic effects on behaviour, we compare the behaviours of test fishes from different lines, and infer that the differences between lines are caused by the differences in their genetics (direct genetic effects). To explore social genetic effects, we use the same data but turn our focus to the reference fish, and infer that the differences we observe between their behaviours are caused by the differences in their social environments, which are in turn driven by the different genetics in the test fish lines (social genetic effects). 

[Wrap up the findings in one or two sentences:
We find inter-strain differences that are statistically significant
Social genetic effects that influence behaviour of a strain depending on the partner (or genetic configuration of the test pair, not sure whether this sounds ok)]

To detect 

## Results

### Data collection {#pilot-data-collection}

Our behavioural assay is 20 minutes long, comprising two consecutively-run 10-minute components: a) an ‘open field’ component, where the fishes are introduced to the test tank and left to swim around freely; and b) a ‘novel object’ component, where a small black plastic cylinder is added to the tank at the beginning of the second 10-minute period, after which the fishes are again left to swim around freely. The assay is run on pairs of fish. Medaka is a seasonal breeder in which photoperiod has a strong effect on physiology and behaviour [@lopez-olmedaLongPhotoperiodImpairs2021]. In this study we tested fish that were acclimated to summer conditions. To avoid confounding mating behaviours between males and females and associated aggressive interactions between males we used only female fish in all experiments. To increase the throughput of the assay, the test tank was divided into four quadrants with barriers, allowing us to run the assay on four pairs of fish simultaneously. Two test tanks situated side-by-side were used, allowing to run 8 concurrent assays. The experimental setup used is shown in Figure \@ref(fig:assay-setup).

(ref:assay-setup) **A**: Experimental setup, with two test boxes side-by-side (denoted as “L” for left and “R” for right). Each test box contains one test tank, separated by removable barriers into quadrants, allowing for the simultaneous assay of four pairs of fish per test tank. The interior of the box is ambiently illuminated by LED lights, and a camera is suspended over the centre of each test tank to record the videos. **B**: Four pairs of fishes in a test tank with labelled quadrants (I, II, III, IV) and strains (*iCab* or *HdrR*). C: Paths of *iCab* reference fish and *HdrR* test fish from the video at panel (B) at 110 seconds. 

\begin{figure}
\includegraphics[width=1\linewidth]{figs/pilot/setup_pic_with_frame_110} \caption{(ref:assay-setup)}(\#fig:assay-setup)
\end{figure}

Between 11 and 16 June 2019, I assayed a total of 307 pairs of fish, comprising the following counts for each strain pairing: 68 *iCab/iCab*, 60 *iCab/HdrR*, 76 *iCab/HNI*, 47 *iCab/Kaga*, and 56 *iCab/HO5*. The locations of the lines' originating populations were shown in the Introduction chapter, **Figure \@ref(fig:line-locations)**. The fish from the iCab strain was denoted as the "reference fish", and was introduced to the test tank first. The “test fish” which was either another iCab fish (for the control condition), or a fish from one of the other four strains that were assayed in this experiment (*HdrR*, *HNI*, *Kaga*, *HO5*). The order in which the strains were assayed across the six days was randomly determined prior to the collection of the data. The test tanks were also rinsed between runs to remove any substances released by subjects during previous runs that could influence the behaviour of the subjects that followed.

### Tracking

We split the videos by quadrant and assay component, and tracked the movement of the fishes with the open-access software package *idtrackerai* [@romero-ferreroIdtrackerAiTracking2019]. Each individual fish was tracked across at least 85% of frames in each video, with 78% of videos tracked for over 99% of frames. The failure to track both fishes across all frames was usually caused by instances where a fish was situated behind the novel object or quadrant divider, rendering it invisible to the camera. A random selection of 20 videos was reviewed to search for instances of mislabeled fishes due to software errors. We found none, which is consistent with the reliability of the software as reported by its authors. We therefore concluded that such instances would be absent or very rare and thus negligible. 

To identify which fish was the reference or test fish, we could generally distinguish between the strains based on their colour, as *iCab* pigmentation is light-brown, *HO5* are light-brown with an orange hue, *HdrR* females are white, and *HNI* and *Kaga* are grey. Where the reference fish was indistinguishable in colour from the test fish, we identified the fish that was introduced to the test tank first, and followed it by eye through to the first frame of the assay. In cases of *iCab*-*iCab* pairings, we randomly assigned the individuals to either the “reference” or “test” fish.

We then used the coordinates of the fishes in each frame to calculate the distance and angle travelled by each fish between a fixed time interval, for example every 0.05 seconds. Distance was calculated between points B $\rightarrow$ C, and angle was calculated between points A $\rightarrow$ B $\rightarrow$ C. We used these distance and angle variables to train a HMM with the *hmmlearn* Python package [@HmmlearnHmmlearn2022] in order to classify the movements as discrete behaviours or “modes of movement”.

### Effect of covariates

We examined the effects of several covariates, including date of assay, time of assay, tank quadrant, and tank side. To achieve this, we calculated the mean speed of individuals in *iCab*-*iCab* pairings ($N$ = 136) over the course of the entire 20-minute video (including both open field and novel object assays), and ran a multi-way ANOVA with all covariates (**Figure \@ref(fig:covariate-effects)**). We found significant differences for date of assay and and tank quadrant (p = 0.0139 and 0.0108), but not for time of assay or tank side. This may have been driven by a difference in the way the assay was performed on the first day of the experiment (11 June 2019), where we used a thick fabric sheet to cover the front of the box rather than the wooden doors shown in **Figure \@ref(fig:assay-setup)**, as they were only installed the following day. The greater level of external light and sound permeating through the fabric may have caused the fishes to exhibit slower movement on that first day, and when the data from that day is excluded, the p-values for date of assay and tank quadrant increase to 0.0477 and 0.0469 respectively.

(ref:covariate-effects) Effect of covariates on mean speed of iCab individuals when paired with another iCab over the course of the full video (including both open field and novel object assays). *P*-values were calculated from a multi-way ANOVA with all four covariates included as terms, and adjusted for false discovery rate.

\begin{figure}
\includegraphics[width=1\linewidth]{figs/pilot/covariate_effects_no-split-by-assay} \caption{(ref:covariate-effects)}(\#fig:covariate-effects)
\end{figure}

### Choice of time interval and number of HMM states {#pilot-hmm-params}

HMMs are well-suited for classifying the hidden states that generate stochastic, sequential observations. To determine the optimal parameters for the HMM’s classification of behaviours, we sought to reduce overfitting (which tends to favour using a lower number of HMM states) while maximising the ability to distinguish between strains based on the relative time they spent in each HMM state (which tends to favour a higher number of HMM states). We additionally considered the time interval between which the distance and angle of travel was measured.

**Figure \@ref(fig:compare-params)** sets out the comparison of HMM parameters on two measures designed to quantify, respectively, the level of overfitting (‘mean concordance between cross-validated HMM states’), and the quantification of differences between strains (‘summed Kruskal-Wallis statistic comparing frequency of time spent in each HMM state across medaka strains) (Methods). 

(ref:compare-params) Comparison between HMM parameters. Horizontal axis: Mean concordance between states assigned by HMMs through a 2-fold cross-validation process. Vertical axis: Kruskal-Wallis statistic comparing strains based on the proportion of time spent in each HMM state, summed across all states. Size of points correspond to the interval, in seconds, between which the distance and angle of travel was calculated (Methods).

\begin{figure}
\includegraphics[width=1\linewidth]{figs/pilot/compare_params} \caption{(ref:compare-params)}(\#fig:compare-params)
\end{figure}

Based on these results and a visualisation of the polar plots for each combination of state number and time interval, we excluded combinations with 15 or more states due to an asymmetry across states that would create difficulties for interpreting their biological meaning (Supplementary material). For the downstream analysis we selected the combination of 14 states with a 0.08-second interval between time points, because out of the remaining combinations it appeared to optimally balance the level of overfitting and detection of differences between strains. 

The distances and angles of travel for the 14 states are shown in Figure 4, generated from 10,000 randomly-selected data points (i.e. movements). Each point represents the radial distance in log10(pixels) that a fish travelled from its previous location (B $\rightarrow$ C), and the polar angle travelled from A $\rightarrow$ B $\rightarrow$ C, where A $\rightarrow$ B is always aligned vertically along the 0-180° axis. For example, a point at 45° far from the pole represents a fast, forward movement to the right, and a point at 260° close to the pole represents a slow, backward movement to the left.

(ref:pilot-polar) Classification of movements by the 14-state HMM, based on distance (in log<sub>10</sub>(pixels)) and angle of travel between a time interval of 0.08 seconds from points B $\rightarrow$ C for distance, and points A $\rightarrow$ B $\rightarrow$ C for angle. Each point represents the distance and angle at point C, and A $\rightarrow$ B is aligned vertically along the 0-180° radial axis. The figure shows an illustrative 10,000 data points (movements), randomly selected from the full dataset. States are sorted in ascending order by mean distance.

\begin{figure}
\includegraphics[width=1\linewidth]{figs/pilot/polar_all_dge} \caption{(ref:pilot-polar)}(\#fig:pilot-polar)
\end{figure}

We next sought to determine whether there was a difference in the proportion of time spent in each state between the 5 inbred strains (implying the presence of direct genetic effects), and between the *iCab* reference fishes depending on the inbred strains of their tank partner (implying the presence of social genetic effects).  

### Direct and social genetic effects on bold/shy behaviour

#### Direct genetic effects

To determine whether the test fish strains differed in the proportions of time they spent in each state, we ran separate multi-way ANOVAs for each combination of assay component (open field or novel object) and state (states 1 to 14): 

$$
frequency_{A,S} = \beta_{1}(test~fish~strain) + \beta_{2}(date) + \beta_{3}(time) + \beta_{4}(quadrant) + \beta_{5}(tank~side)
$$
where $A$ = assay commonent (open field or novel object), and $S$ = HMM state (1 to 14).

The proportion of time each individual spent within a state was first inverse-normalised within each combination of assay and state, and the date of assay, time of assay, tank quadrant, and tank side were included as covariates. P-values were then adjusted for the False Discovery Rate (**FDR**).

The states that showed a significant difference are set out in **Table \@ref(tab:pilot-dge-tbl)**. The test fish strains differed significantly in the proportion of time spent in a given state (p < 0.05, FDR-adjusted) for 11 out of 14 states in the open field assay (4.45x10<sup>-24</sup> < p < 1.06x10-2), and 7 out of 14 states for the novel object assay (5.53x10<sup>-16</sup> < p < 4.2x10-3), with the strain of the test fish explaining up to ~28% of the variance in the proportion of time spent in a given state. For some states, there was also a significant difference between quadrants, date of assay, and tank side (open field: 1.03e-09 < p < 1.18x10-2; novel object: 1.75x10-8 < p < 4.9x10-2). Full tables for all states and variables are provided in the Supplementary Material.

\begin{table}

\caption{(\#tab:pilot-dge-tbl)Significant differences in the proportion of time spent in each HMM state across test fish strains for the open field and novel object assay components.}
\centering
\begin{tabular}[t]{llll}
\toprule
Assay & State & Variance explained (\%) & p-value (FDR-adjusted)\\
\midrule
\cellcolor{gray!6}{open field} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{26.62} & \cellcolor{gray!6}{3.60e-22}\\
open field & 2 & 21.94 & 6.18e-18\\
\cellcolor{gray!6}{open field} & \cellcolor{gray!6}{3} & \cellcolor{gray!6}{28.21} & \cellcolor{gray!6}{4.45e-24}\\
open field & 4 & 17.73 & 2.12e-15\\
\cellcolor{gray!6}{open field} & \cellcolor{gray!6}{5} & \cellcolor{gray!6}{7.48} & \cellcolor{gray!6}{2.78e-05}\\
\addlinespace
open field & 6 & 5.60 & 2.48e-04\\
\cellcolor{gray!6}{open field} & \cellcolor{gray!6}{7} & \cellcolor{gray!6}{5.46} & \cellcolor{gray!6}{3.11e-04}\\
open field & 8 & 5.79 & 1.08e-04\\
\cellcolor{gray!6}{open field} & \cellcolor{gray!6}{9} & \cellcolor{gray!6}{7.36} & \cellcolor{gray!6}{8.96e-06}\\
open field & 10 & 3.78 & 1.06e-02\\
\addlinespace
\cellcolor{gray!6}{open field} & \cellcolor{gray!6}{13} & \cellcolor{gray!6}{4.66} & \cellcolor{gray!6}{3.42e-03}\\
novel object & 1 & 17.19 & 7.28e-14\\
\cellcolor{gray!6}{novel object} & \cellcolor{gray!6}{2} & \cellcolor{gray!6}{14.28} & \cellcolor{gray!6}{2.92e-11}\\
novel object & 3 & 19.30 & 5.53e-16\\
\cellcolor{gray!6}{novel object} & \cellcolor{gray!6}{4} & \cellcolor{gray!6}{13.12} & \cellcolor{gray!6}{1.26e-10}\\
\addlinespace
novel object & 6 & 4.12 & 4.20e-03\\
\cellcolor{gray!6}{novel object} & \cellcolor{gray!6}{7} & \cellcolor{gray!6}{8.93} & \cellcolor{gray!6}{1.84e-06}\\
novel object & 9 & 10.68 & 9.87e-08\\
\bottomrule
\end{tabular}
\end{table}

**Figure \@ref(fig:pilot-dge-time)** depicts the time dependence of HMM states over the course of the video, and the regions of the test tank that were most frequently occupied by the different strains. Figures A and H show the HMM states with panels coloured red to indicate the states that were found to significantly differ between test fish strains. **Figures \@ref(fig:pilot-dge-time)B** and **E** show how each individual test fish, grouped by inbred strain, moved through HMM states throughout the course of the video, with each tile coloured by the state most frequently-occupied by the individual within 2-second intervals. Figures **\@ref(fig:pilot-dge-time)C** and **F** show the same data, recalculated as densities within each strain, with only the states that showed significant differences between strains in colour, and the remaining states consolidated and coloured grey. There is an especially clear difference between strains in the proportions of time spent in the slowest-moving states (i.e. states 1 to 3) at the beginning of each assay component, with an increase across all strains in the novel object assay, likely as a consequence of having less room to move, as well as the fear response that the novel object was designed to elicit. The differences are clearest when comparing the southern Japanese medaka strains (*iCab*, *HdrR*, and *HO5*) against the northern Japanese strains (*Kaga* and *HNI*). In addition, we note that *Kaga* tends to spend more time in the fast- and forward-moving state 13 at the beginning of the assay than at other times, which suggests that for that strain, such movements may be the manifestation of a stress response. **Figures \@ref(fig:pilot-dge-time)D** and **G** show, as densities, the regions of the tank that were most frequently occupied by each strain. Although the northern Japanese strains *Kaga* and *HNI* were similarly fast-moving relative to the southern Japanese strains, in the open field assay component they appear to favour different regions of the tank – where *HNI* occupied the central regions of the tank with more frequency, *Kaga* tended to prefer swimming along the boundaries of the tank.

(ref:pilot-dge-time) Differences between test fish strains in the HMM states they occupied during the open field (top) and novel object (bottom) assay components. **A and H**: 14 HMM states with panels coloured red to indicate significant differences between test fish strains in the proportion of time spent in those states during the separate assay components. **B and E**: Transitions between HMM states across time for each individual test fish, grouped by strain. Tiles are coloured by the state most frequently occupied by each fish within 2-second intervals. **C and F**: Densities within each strain for the occupation of states that significantly differed between strains (colour), with other states consolidated (grey). **D and G**: Densities of the test tank locations occupied by each strain, calculated within 900 grid points (30x30).

\begin{figure}
\includegraphics[width=1\linewidth]{figs/pilot/0.08_14_dge} \caption{(ref:pilot-dge-time)}(\#fig:pilot-dge-time)
\end{figure}

#### Social genetic effects {#pilot-sge}

To determine whether the *iCab* reference fishes altered their behaviour depending on the inbred strain of their tank partner, we carried out the same analysis and model as above using only data from the *iCab* reference fishes. The states that showed a significant difference are set out in **Table \@ref(tab:pilot-sge-tbl)**. The *iCab* reference fishes differed significantly in the proportion of time they spent in a given state depending on the strain of their tank partner ($p$ < 0.05, FDR-adjusted) for 5 out of 14 states in the open field assay (2.04x10^-6^ < $p$ < 2.11x10^-2^), and 7 out of 14 states for the novel object assay (4.76x10^-7^ < $p$ < 4.06x10^-2^). The strain of the tank partner explained up to ~9% of the variance in the proportion of time the *iCab* reference spent in a given state. Full tables for all states and variables are provided in the Supplementary Material. 

\begin{table}

\caption{(\#tab:pilot-sge-tbl)Significant differences in the proportion of time spent in each HMM state by iCab reference fishes depending on the strain of their tank partner during the open field and novel object assay components.}
\centering
\begin{tabular}[t]{llll}
\toprule
Assay & State & Variance explained (\%) & p-value (FDR-adjusted)\\
\midrule
\cellcolor{gray!6}{open field} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{8.52} & \cellcolor{gray!6}{5.88e-06}\\
open field & 2 & 9.09 & 2.04e-06\\
\cellcolor{gray!6}{open field} & \cellcolor{gray!6}{3} & \cellcolor{gray!6}{7.97} & \cellcolor{gray!6}{1.77e-05}\\
open field & 5 & 3.92 & 4.29e-03\\
\cellcolor{gray!6}{open field} & \cellcolor{gray!6}{12} & \cellcolor{gray!6}{2.97} & \cellcolor{gray!6}{2.11e-02}\\
\addlinespace
novel object & 1 & 7.94 & 8.73e-06\\
\cellcolor{gray!6}{novel object} & \cellcolor{gray!6}{2} & \cellcolor{gray!6}{9.38} & \cellcolor{gray!6}{4.76e-07}\\
novel object & 3 & 8.73 & 1.58e-06\\
\cellcolor{gray!6}{novel object} & \cellcolor{gray!6}{6} & \cellcolor{gray!6}{4.76} & \cellcolor{gray!6}{1.23e-03}\\
novel object & 8 & 2.80 & 4.06e-02\\
\addlinespace
\cellcolor{gray!6}{novel object} & \cellcolor{gray!6}{10} & \cellcolor{gray!6}{3.81} & \cellcolor{gray!6}{8.43e-03}\\
\bottomrule
\end{tabular}
\end{table}

We observe that the proportions of time the *iCab* reference fishes spent in different states do differ based on the strains of their tank partner, and that their behavioural patterns tend to reflect those of the test fish strains they are paired with (**Figure \@ref(fig:pilot-sge-time)**). Thus, the *iCab* reference fishes spend less time in the slower-moving states when in the presence of the faster-moving northern Japanese strains *Kaga* and *HNI*, which in turn shows that the test fishes are transmitting their behaviours to some degree to their *iCab* tank partners.The differences in the behaviours of *iCab* reference fishes based on the strain of their tank partners are not as large as those between the test fish strains. However, unlike what was observed with the test fishes, here there is a greater number of states that show significant differences during the novel object component of the assay compared to the open field component. This suggests that when movement is restricted, or when in the presence of a potential threat, the behaviour of the test fish tank partner has more of an influence on the *iCab* reference fish’s behaviour than otherwise.

(ref:pilot-sge-time) Differences between HMM states occupied by the reference fish when paired with different test fish strains during the open field (top) and novel object (bottom) assay components. **A and H**: 14 HMM states with panels coloured red to indicate significant differences between the reference fishes under different strain-pairings in the proportion of time spent in those states during the separate assay components. The HMM states are the same as those in **Figure \@ref(fig:pilot-dge-time)**, but coloured with a different palette. **B and E**: Transitions between HMM states across time for each individual *iCab* reference fish, grouped by the strain of its tank partner. Tiles are coloured by the state most frequently occupied by each fish within 2-second intervals. **C and F**: Densities within each strain-pairing for the occupation of states that significantly differed between strain-pairings (colour), with other states consolidated (grey). **D and G**: Densities of the test tank locations occupied by the iCab reference fishes when paired with different strain, calculated within 900 grid points (30x30).

\begin{figure}
\includegraphics[width=1\linewidth]{figs/pilot/0.08_14_sge} \caption{(ref:pilot-sge-time)}(\#fig:pilot-sge-time)
\end{figure}

Finally, to develop a metric to quantify the degree to which the *iCab* reference fishes’ behaviour is influenced by the strain of its tank partner, we calculated the proportions of time that the pairs of fish spent simultaneously occupying the same HMM state. **Figure \@ref(fig:pilot-cooc-heat)** shows that when paired with the slowest-moving *HdrR* strain, the *iCab* reference fishes spent more time co-occupying the slow- and forward-moving state 2, whereas they tended to co-occupy the fast- and forward-moving state 11 when paired with the faster-moving northern *Kaga* and *HNI* strains. When paired with another *iCab*, they preferred to co-occupy the slow-moving and pan-directional state 4. For each combination of assay component and state, we then ran a Kruskal-Wallis test to determine whether there were differences in the frequencies of state co-occupancy under different strain pairings ($p$ < 0.05, FDR-adjusted), and found significant differences for states 1 to 6 for the open field component (1.1x10^-8^ < $p$ < 4.1x10^-2^), and states 1 to 4 and 7 for the novel object component (1.6x10^-6^ < $p$ < 2.5x10^-2^). The heatmaps show that *iCab* tends to co-occupy state 4 at the highest frequency when paired with another *iCab*, which suggests that this pan-directional, slow-moving state is a more comfortable or natural state for *iCab* to occupy, particularly when under stress.

(ref:pilot-cooc-heat) Frequency of HMM state co-occupancy between pairs of fish, calculated across all all videos per strain-pairing. MAKE TEXT BIGGER

\begin{figure}
\includegraphics[width=1\linewidth]{figs/pilot/0.08_14_cooc_heatmap} \caption{(ref:pilot-cooc-heat)}(\#fig:pilot-cooc-heat)
\end{figure}


## Discussion

In this chapter have described an assay for measuring bold-shy behaviours in medaka fish that can reliably detect differences: (a) between individuals from different inbred strains – allowing for the quantification of direct genetic effects on behaviour; and (b) between the behaviour of individuals when paired with tank partners from a different strain – allowing for the quantification of social genetic effects on behaviour. 

I found that behaviours exhibited during the assay show minimal variance across the covariates of date of assay, time of assay, tank quadrant, and tank side. This creates confidence that the genetic effects that we observed – both direct and indirect – are not unduly affected by these variables.

I have shown that a Hidden Markov Model (HMM) allows an adequate classification of movements based on the direction and angle of travel within set time intervals. The HMM method has previously been used to classify maternal behaviour patterns in mice [@carolaHiddenMarkovModel2011], and I have extended the application here to bold-shy behaviours in medaka fish. In principle, this method can be expanded to include additional behavioural features such as proximity to the wall or other objects, inwards/outwards orientation, proximity to the tank partner, and other metrics related to leader-follower dynamics, a possibility that will be tested in future studies.

The HMM classification of behaviours also facilitated the ranking of behaviours by speed and angle of movement, which may be further interpreted in terms of biology and adaptation styles. However, even though the HMM classifies the slowest-moving states as separate modes of movement, one should be cautious when attributing biological meaning to their differences, because even when a fish is almost completely still, the fish object’s centroid (upon which the variables of distance and angle of travel are calculated) will tend to move by one or several pixels through minor changes in the segmentation of the object, and are thus subject to greater noise than the faster-moving states. 

I have found that inbred strains of medaka fish can be distinguished by the proportion of time they spend in certain states. The slowest states, capturing no or minimal movement, were the states that most clearly separated the strains, and these differences appeared most clearly at the beginning of the open field and novel object assays. This suggests that for southern Japanese strains such as *iCab*, *HdrR*, and *HO5*, the “freeze” reflex is caused by anxiety, which eventually dissipates over time indicating habituation. Similar observations showing initial anxiety as shown by freezing behaviour and subsequent habituation have been made in other studies using open field assays with *iCab* fish [@lucon-xiccatoComparisonAnxietylikeSocial2022].

On the other hand, the northern Japanese strains *Kaga* and *HNI* spent little time in the slow-moving states at the beginning of the video, which indicates either that their habituation sets in earlier, or that their stress and anxiety is expressed to a lesser degree as freezing behaviour. The former appears to be more likely for *Kaga*, as in the open field assay, it spends more time in the faster-moving states at the beginning of the video and then slows down thereafter, which suggests that its higher level of movement may be induced by stress. It is interesting then that once the novel object is introduced, *Kaga* tends to move slowly like the other strains. Obviously introduction to a novel environment and exposure to a potentially dangerous object elicits different behavioural patterns in this strain. Taken together with the overt thigmotaxis behaviour (i.e. moving along the sides of the tank during the open field assay component) relative to other strains, its behaviour may suggest an “escape-seeking” response. It will be interesting to carry out further experiments to determine under which fear-inducing conditions *Kaga* reacts with this more frantic style of movement rather than the freeze response that it displays in the novel object component in common with the other strains, and to explore its physiological basis.

With respect to social genetic effects, we have found that a fish’s behaviour is affected by the differential behaviour of its tank partner, although the effect is less powerful than the direct genetic effect on a fish’s own biology. These social genetic effects are detectable when observing the proportions of time the reference fishes spend in certain states over the course of the video, and can be quantified by measuring the frequency of state co-occupancy with their tank partners. 

It is also interesting to find that *iCab* prefers to co-occupy the slow, pan-directional state 4 when paired with another individual from the same strain. As the strains are raised exclusively in the company of individuals from the same strain, that type of behaviour may represent a more comfortable – yet still cautious – mode of movement, or a type of mimicry that tends to occur when in the company of individuals that are more genetically or socially familiar.

In this study we only used one strain as the reference fish, but future experiments can expand on this analysis by using different strains as the reference, thereby exploring how a strain’s genetics influence the degree of their behavioural plasticity, and how the distinct behaviours of strains may interact in intriguing ways.

In summary we show that the OFT experimental setup in combination with the HMM analysis can reliably detect both direct and social genetic effects. This creates the opportunity to carry out a similar study on a larger panel of inbred strains, such as the MIKK panel [@fitzgeraldMedakaInbredKiyosuKarlsruhe2022], with a view to identifying the genetic variants associated with not only these differences in behaviour, but also the differences in the degree to which an individual transmits their behaviour onto their social companions. This in turn will shed light on longstanding biological questions concerning the direct and indirect influences on behaviour, their physiological bases, and their adaptive purposes. This is the subject of the following chapter.

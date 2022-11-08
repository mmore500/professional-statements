**Plausibility and Consequences of Learned Evolvability: Autoencoder AI as** _ **in Silico** _ **Genetic Representations**

**SUMMARY**
Biological organisms comprise thousands of functional components with bespoke adaptive properties.
This intricacy defies the vastness, sparseness, and ruggedness of the genetic search space evolution has navigated: inconceivably many possible components exist, but few have any biological activity.

Where biological evolution has succeeded remarkably, algorithms inspired by evolution aimed at solving engineering problems (_i.e.,_ evolutionary computation) have comparably struggled.
This disparity remains a major focal point, and there has been extensive work to better understand the mechanisms enabling biology to generate novel and useful variation (_i.e.,_ evolvability) in order to replicate them.
The field of protein engineering similarly faces an unfathomably large and complex search space.
However, emerging work with the transformer-based _ReLSO autoencoder model_ has made successful search within biosequence space feasible **.** This tool distills a denser, smoother representation of biological protein sequences [1].
In other words, this machine learning method can **transform rugged and unnavigable search spaces into more evolvable ones.**

Billions of years of evolution have shaped the mechanisms and substrate that evolution now operates on, but whether and how evolvability has affected evolution has been hotly contested.
The premise of evolvability hinges on the feasibility of paring down phenotypic search space without sacrificing avenues for future evolution of novelty.
We propose todirectly test how such generalizations affect evolutionby harnessing the **ReLSO AI model** to learn a **distilled, high-viability genetic representation** for self-replicating programs in the **Avida digital evolution platform** and experimentallytesting their **effects on evolution of novelty and complexity.**

Additional broader impacts of this work will be (1) opening new avenues for future digital evolution experiments within the broader artificial life research community by _publishing pre-trained, plug-and-play distilled genetic representations for Avida_; and (2) _publishing training data from our work_to support further development of ReLSO and related methodologies.

We are excited about the potential for work with sequence autoencoder models in evolutionary computation to catalyze advances in applied heuristic optimization, with significant potential engineering and industrial impacts.
However, our work will focus on applying sequence autoencoder models as an experimental tool to **investigate basic questions about the plausibility of evolvability in Darwinian evolution**.

**WHY US?**
The postdoctoral candidate, _Matthew Andres Moreno_, will bring existing experience developing autoencoder-based genotype-phenotype maps for genetic algorithms [2], as well asextensive experience with scientific programming andorchestrating simulation experimentsin high-performance computing environments.
The project's Science and AI Mentors have both extensively studied evolution computationally.
_Dr.
Luis Zaman_'s work on evolvability with Avida will benefit the project's scientific goals of untangling the relationship between learned genetic representation, evolvability, and evolutionary dynamics.
_Dr.
Kevin Wood_'s background in using control systems approaches for algorithmically steering evolutionary dynamics will provide quantitative rigor.

**BACKGROUND**
Algorithmic models **have yet to reproduce the exceptional efficacy of biological evolution at navigating high-dimensional, epistatic search spaces, suggesting a fundamental blind spot in theory.** A plausible explanation for the remarkable success of biological evolution is _evolvability_, the ability for evolving populations to generate useful and novel variation through mutation and recombination.

Work with digital evolution simulations, where model systems are by nature fully synthetic, grapple directly with the question of evolvability — most models lack evolvability characteristics exhibited by biological systems.
Over the last decade, digital evolution research has made profound advances in understanding, measuring, and facilitating evolvability.
Early work showed that manual design of genotype-phenotype maps could provide some improvements to evolvability by taking advantage of regularities and symmetries within particular problem domains.
More recent work has explored the use of_autoencoder models_ toautomatically learn properties about the evolutionary search space and exploit those generalizations to render the search space more navigable.

Autoencoder models are machine learning tools trained to reconstruct received inputs.
They provide two useful functions: (1) _denoising_: partially obstructed or corrupted specimens provided as input can be rescued to yield valid specimens resembling the original and (2) _dimensional reduction_: input specimens can be passed through a "bottlenecked" lower-dimensional intermediate representation and then reconstructed.

When applied in an evolutionary context, _ **autoencoder denoising** _ can **buffer deleterious mutations** by rescuing otherwise nonviable genomes [2].
Likewise, _ **autoencoder dimensional reduction** _ allows derivation of a large number of phenotypic features from a more **compact genetic encoding** , analogously to a developmental process [2].
Limitations in autoencoder capability, however, have hindered efforts to learn genetic representations for complex, sequence-based problem domains, such as genetic programming.
However, **significant advances in attention-based transformer models** have recently opened up **new possibilities for such work**.

Indeed, early work is already moving in this direction.
Genetics researchers at Yale very recently released their _ReLSO model_, a powerful sequence autoencoder designed to facilitate bioengineering of synthetic proteins [1].
This model learns a lower-dimensional representation of protein sequence space from example high-activity protein sequences.
The ReLSO team has shown that this representation facilitates discovery of high-activity protein sequences by a variety of optimizers such as hill climbing and directed evolution.

Nascent work within the field of genetic programming — which studies techniques for automatic evolution of computer programs — has also emerged to exploit advances in attention-based transformer models.
OpenAI recently prepublished _ELM (Evolution through Large Models)_, which applies the _GPT-3–based "GitHub CoPilot"_ model to facilitate navigation of the sparse, rugged space ofhuman-readable programming languages [3].
In a related, but distinct, vein from this proposed work, ELM uses CoPilot as the mutation operator instead of the genetic representation, which is more amenable to that particular existing model.
Nevertheless, their results are promising.

For this project, **we will harness ReLSO to learn lower-dimensional genetic representations for the Avida artificial life system**.
We will then use **evolutionary simulation experiments** to characterize the **evolutionary properties of this genetic representation**.
Finally, we will **study the regularities discovered by ReLSO's reduced representation** , as they might hold further insights into the evolution of evolvability in nature.

_Avida_has a rich 20 -year historyacross many evolutionary modeling lab groups and has been for experimental topics ranging from ecology to genome architecture.
In Avida, digital organisms execute a self-copy loop to reproduce, a _nontrivial minimum viability criterion_ which induces biologically salient genetic ruggedness.
Further selection can be performed on additional criteria, a common choice being the metabolism-like _"Logic-9" tasks_.

**RESEARCH PLAN**
_ **Stage 1: train sequence autoencoder models and evaluate performance on Avida genomes.** _
We will begin by training the ReLSO model on a pre-existing dataset of thousands of viable Avida self-replicators (C.G., 2020).
If needed, we may augment this dataset through novelty search from known self-replicators.
To evaluate model performance, we will test (1) _fidelity_ of genome reconstruction from the bottlenecked encoding, (2)_smoothness_ of the bottlenecked representation, (3) self-replication _viability_ of sampled bottlenecked genomes.

Adapting the ReLSO model will require careful tuning of the bottleneck dimension.
We will train and evaluate several models over a range of bottleneck dimensions, then select three for inclusion in subsequent evolutionary experiments spanning high, moderate, and low reconstruction fidelity.
To augment our work with ReLSO, we **may** additionally work with the _xfspell_transformer-based sequence denoising model [5].
We would train this model to repair Avida genomes subjected to loss-of-viability mutations, and evaluate its error-correction accuracy and rate of spurious edits.
This additional optionensuresresilience of our research program to any unforeseen obstacles.

_ **Stage 2:** __ **experimentally test the effect of learned genetic representation on evolutionary dynamics.** _
We will use evolutionary experiments to test the capability of the learned genetic representations from stage 1 to evolve Logic-9 traits not present in the training corpus.
Specifically, we will evaluate generations elapsed before gain of Logic-9 traits and, to understand the capability of the genetic representation to support sequential increases in complexity, the compound number of Logic-9 traits gained.
Comparing several models with varying bottleneck severity will allow us to isolate the effects of this variable on novelty potential,ensuring clearlyinterpretable results.

In additional experiments, we will isolate evolvability properties of the learned genetic representations by taking an _evolvability signature_.
We will sample mutations of viable genomes and measure the frequency of loss of self-replication capability and the distribution of continuous effects on self-replication efficiency.
If evolved Logic-9 capable genomes are available, we will additionally test the fraction of mutation that causes loss of Logic-9 traits.

**CONCLUSION**
Artificial life systems stand to make **profound advances in evolvability** through automatic generation of sophisticated genetic representations via AI.
Such advances will significantly increase these systems' capacities to **evolve complexity and novelty**.
Likewise, the unique intermediary position of digital artificial life work between mathematical modeling and physical biological systems will make it a **productive testbed for AI techniques** to facilitate biosequence engineering.
These will be important broader impacts.

Our primary objective, however, will be to **apply AI methods to tackle major unsolved questions about evolvability**.
Testing the capacity of a distilled genotype space to support **evolution of complexity and novelty** within a full-fledged **artificial life model system** will significantly inform broader perspectives on the role of evolvability in biological evolution.
Methodology and findings from this project will catalyze rich avenues for future work with evolvability in artificial life models throughout an independent research career.

[1] Castro et al. "Tformer. protein gen." Nature M. Int. '22
[2] Moreno et al. "AutoMap" GECCO '18
[3] Lehman et al. "Ev. Mod." arXiv '22
[4] C.G. & Adami. "Info. comp. g.-p. map" arXiv '21
[5] Hagiwara. "R.W. NLP" S&S '21

# human_visual_diet

<div align="center">
<h3>Improving generalization by mimicking the human visual diet</h3>
  <img src="teaser_part_1.png" alt="Teaser Figure">
  
  <a href="https://arxiv.org/abs/2206.07802">Paper</a> •
  <a href="#overview">Overview</a> •
  <a href="#codebase">Using the Codebase</a> •
  <a href="#data">Accessing the data</a> •
</div>

This repository contains the official implementation of our paper: *Adversarial examples within the training distribution: A widespread challenge.* Here you can find the code, demos and the data used for this project.

The paper can be accessed [here](https://arxiv.org/abs/2206.07802).

<div align="center">
<h3>Authors</h3>
  <a href="https://spandan-madan.github.io/about/">Spandan Madan</a> •
  <a href="">Li You</a> •
  <a href="https://www.a-star.edu.sg/cfar/about-cfar/our-team/dr-zhang-mengmi">Mengmi Zhang</a> •
  <a href="https://vcg.seas.harvard.edu/people/hanspeter-pfister">Hanspeter Pfister</a> •
  <a href="https://klab.tch.harvard.edu/people/GK_Personal_Page/GK_personal_page.html">Gabriel Kreiman</a>
</div>

# Overview
We present a new perspective on bridging the generalization gap between biological and computer vision---mimicking the human visual diet. While computer vision models rely on internet-scraped datasets, humans learn from limited 3D scenes under diverse real-world transformations with objects in natural context. Our results demonstrate that incorporating variations and contextual cues ubiquitous in the human visual training data (visual diet) significantly improves generalization to real-world transformations such as lighting, viewpoint, and material changes. This improvement also extends to generalizing from synthetic to real-world data---all models trained with a human-like visual diet outperform specialized architectures by large margins when tested on natural image data. These experiments are enabled by our two key contributions: a novel dataset capturing scene context and diverse real-world transformations to mimic the human visual diet, and a transformer model tailored to leverage these aspects of the human visual diet.

# Codebase

Our work builds on top of three existing codebase---[Openrooms](https://github.com/ViLab-UCSD/OpenRooms) as the base renderer which we modify to create the HVD dataset, [WhenPigsFly](https://github.com/kreimanlab/WhenPigsFlyContext/tree/main) for base architecture which we modify to create our proposed model HDNet, and [DomainBed] (https://github.com/facebookresearch/DomainBed/tree/main) for Domain Generalization benchmarks. Each of these codebases were modified significantly from their original versions to adapt them for our work. Thus, we provide the adapted versions within this codebase to make our codebase standalone.

### Code Structure

`rendering`: Contains all code used for rendering the Human Visual Diet (HVD) dataset.

`training_models`: Contains all code for training models on the HVD dataset.

`dataset`: Placeholder, where data needs to be downloaded. Please see below for more details.

### System Requirements

Analysis was conducted on Harvard's FASRC clusters (https://www.rc.fas.harvard.edu). Machine architectures are as follows:

- Operating System: CentOS Linux 7 (Core)
- CPE OS Name: cpe:/o:centos:centos:7
- Kernel: Linux 3.10.0-1062.el7.x86_64
- Architecture: x86-64

The code should work out of the box on most linux distributions. The code was not tested on MacOS, or any other linux distribution except CentOS Linux 7 (Core). Code was run using Python 3.8.5. Exact version numbers for python pacakges can be found in the `hvd_requirements.txt` file. GPUs will be needed to accelerate training and inference time. 

### Installation
- Clone this github repository.
- Install the required python packages using `pip` in accordance with the `in_dist_requirements.txt` file. This includes all package names and versions used in our analysis.
- Download the data (not needed to run demos) following instructions below.

# Data
The HVD and Semantic iLab datasets can be foud here:

#import "requirements.typ": *

// Put your personal information here, replacing mine
#let name = "Mu-Ti Chung"
#let location = "Taipei, Taiwan"
#let email = "mtchung037@gmail.com"
#let github = "github.com/mutichung"
#let linkedin = "linkedin.com/in/mutichung"
#let phone = "+886 979 442 550"
#let personal-site = "mutichung.github.io"

#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  // location: location,
  email: email,
  github: github,
  // linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  accent-color: "#000000",
  font: "New Computer Modern",
  paper: "a4",
  author-position: center,
  personal-info-position: center,
)

/*
* Lines that start with == are formatted into section headings
* You can use the specific formatting functions if needed
* The following formatting functions are listed below
* #edu(dates: "", degree: "", gpa: "", institution: "", location: "", consistent: false)
* #work(company: "", dates: "", location: "", title: "")
* #project(dates: "", name: "", role: "", url: "")
* certificates(name: "", issuer: "", url: "", date: "")
* #extracurriculars(activity: "", dates: "")
* There are also the following generic functions that don't apply any formatting
* #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
* #generic-one-by-two(left: "", right: "")
*/

== Summary

Machine Learning Engineer specialized in model training, compression, and optimization for AI accelerators. Proven ability to build production-grade Python libraries and training pipelines for large-scale model fine-tuning and compression (CNN, LLM). Skilled in distributed training and hardware-aware algorithm design, with a track record of deploying tools that significantly reduce model size while maintaining accuracy.

== Skills

*Programming Languages*: Python, C/C++, Rust

*Frameworks & Libraries*: PyTorch, TensorFlow, Transformers, TRL, Accelerate, DeepSpeed, Triton

== Work Experience

#work(
  title: "Software Engineer",
  location: "Hsinchu, Taiwan",
  company: "Ambarella",
  dates: dates-helper(start-date: "Jul 2021", end-date: "Present"),
)

#project(
  name: "Cross-Framework Pruning Library",
  // Role is optional
  // role: "Maintainer",
  // Dates is optional
  // dates: dates-helper(start-date: "Nov 2023", end-date: "Present"),
  // URL is also optional
  // url: "hyperschedule.io",
)
- Led design and development of a framework-agnostic model pruning library, enabling unified APIs and features across TensorFlow 1/2 and PyTorch.
- Implemented structured and unstructured pruning using L1/L2-norm criteria, with support for gradual pruning schedules and layer-wise sparsity analysis with respect to hardware constraints.
- Achieved 50-90% model sparsity with $<1%$ accuracy loss, allowing hardware acceleration on SoCs.
- Complete CI support built: unit tests, end-to-end regression tests, and Sphinx-based documentation with runnable Jupyter examples.

#project(name: "Compression-Aware Training for LLMs")
- Developed compression-aware training library with support for DeepSpeed ZeRO-3 to enable VRAM-efficient fine-tuning of LLMs.
- Integrated a wide range of post-training and training-time compression techniques, including GPTQ, SparseGPT, Wanda, QAT, OmniQuant, LoRA/qLoRA, knowledge distillation.
- Successfully compressed LLaMA models to 12.5% of original size with minimal accuracy degradation.
- Researched and created deployment guides for clients with limited compute budgets, covering training strategy, compression trade-offs, and hardware-aware optimization.
- Worked with tools such as Triton and liger-kernel to optimize training throughput and resolve memory bottlenecks.

#project(name: "Activation Sparsity in LLMs")
- Independently led research on activation sparsity in LLaMA-2, Mistral-7B, and Qwen-2.5, achieving 70-90% sparsity in MLP layers via continual pretraining.
- Integrated methods like ReLUfication, Deja Vu, TurboSparse, and Q-Sparse using PyTorch and Triton.
- Developed a predictor network to identify active MLP channels at inference, enabling selective weight loading and IO-bound acceleration with minimal accuracy loss.

== Education

#edu(
  institution: "University of Michigan, Ann Arbor",
  location: "Ann Arbor, MI",
  dates: dates-helper(start-date: "Sep 2019 ", end-date: "Dec 2020"),
  degree: "Master's of Science, Robotics",
  gpa: "4.0/4.0"
  // Uncomment the line below if you want edu formatting to be consistent with everything else
  consistent: true,
)

#edu(
  institution: "National Taiwan University",
  location: "Taipei, Taiwan",
  dates: dates-helper(start-date: "Sep 2014", end-date: "Jun 2018"),
  degree: "Bachelor's of Science, Mechanical Engineering | GPA: 4.13/4.3",
  consistent: true,
)

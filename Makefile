all: papers-zhang-2024.pdf

cover-letter.pdf: README.md
	pandoc README.md -o cover-letter.pdf

papers-zhang-2024.pdf: cover-letter.pdf Zhang-et-al-2020-Multiscale-modelling.pdf Badillo-et-al-2020-Intro-ML.pdf Michoel-Zhang-Causal-Inference-2023.pdf
	pdftk $? cat output papers-zhang-2024.pdf

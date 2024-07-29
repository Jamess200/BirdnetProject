<div align="center">
  <h1>BirdNET Project</h1>
  <p><img src="Files/img/bird_readme.png" alt="BirdNET Banner" style="border-radius: 50%; width: 150px; height: 150px; object-fit: cover;"></p>
</div>

## Description
The BirdNET project uses an AI model to analyse bird songs and identify bird species. This README provides instructions on how to use this repository, along with descriptions of the scripts included and their functionalities for processing audio recordings and extracting relevant data.

## Table of Contents
- [Using This Repository](#using-this-repository)
- [Analysing Your Audio Recordings](#nalyzing-your-audio-recordings)


## Using This Repository
To use this repository:
1. **Clone the Repository**:
Clone the repository to your local machine.
   ```sh
   git clone https://github.com/Jamess200/BirdnetProject
   cd BirdnetProject
   ```

2. **Open the Notebooks in Google Colab**:
The main tools for different stages of analysis and processing are provided as Jupyter Notebooks. You can open them in Google Colab using the provided links bellow.

- **Time test**:

   <span style="display:inline-block; margin-left: 10px;">
     <a href="https://colab.research.google.com/drive/10y8z9R69SYeEwNFV_GL3peqUDjr_fUbY?usp=sharing">
       <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab" style="vertical-align: middle;"/>
     </a>
   </span>: This notebook tests run times by processing random audio files to determine how long it takes for the BirdNET AI to identify bird species from the recordings and create the output DataFrame. It also includes an ANOVA analysis to evaluate the variability in processing times across different audio files, measuring the efficiency of converting audio files into a usable format using BirdNET.

- **BirdNET Audio to CSV**:

   <span style="display:inline-block; margin-left: 10px;">
     <a href="https://colab.research.google.com/drive/1ofIgH6WYTRZxlmmCn-0VmR4ZYu8mSlAA?usp=sharing">
       <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab" style="vertical-align: middle;"/>
     </a>
   </span>: This notebook is used for processing audio files with the BirdNET model to extract bird song data into a CSV format. It serves as the primary tool for converting audio inputs into structured data, including information on identified bird species and confidence levels, for further analysis.

- **Merge Multiple CSV Files**:

   <span style="display:inline-block; margin-left: 10px;">
     <a href="https://colab.research.google.com/drive/1oUl9P_7iakkyDU6Ph9NYtEX2NTk1kzcX?usp=sharing">
       <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab" style="vertical-align: middle;"/>
     </a>
   </span>: This notebook merges multiple CSV files containing bird song data into a single comprehensive dataframe. It adds appropriate columns for enhanced data organisation and analysis. The final dataframe is saved in both CSV and Excel formats, facilitating further data processing and sharing.

## Analysing Your Audio Recordings
To analyse your own audio recordings of bird songs:
1. **Upload Your Audio File to Google Colab**: 
- You can upload your audio files directly to the Colab environment or use Google Drive to manage your files.
- To mount Google Drive, use:
   ```{python}
   from google.colab import drive
   drive.mount('/content/drive')
2. **Run the Analysis Notebook**:
- Open the relevant notebook in Colab.
- Specify the file path for your audio file in the notebook.
- Run the cells to process the audio and extract bird species data.
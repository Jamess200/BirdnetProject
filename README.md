<div align="center">
  <h1>BirdNET Project</h1>
  <p><img src="Files/img/bird_readme.png" alt="BirdNET Banner" style="border-radius: 50%; width: 150px; height: 150px; object-fit: cover;"></p>
</div>

## Description
The project uses an AI model called BirdNET to analyse bird songs and identify bird species. This README provides instructions on how to use this repository, along with descriptions of the scripts included and their functionalities for processing audio recordings and extracting relevant data.

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

- **Data Analysis on Bird Song Identification Accuracy**:

   <span style="display:inline-block; margin-left: 10px;">
     <a href="https://colab.research.google.com/drive/1v62FB7Ndhnir04sYnL7f9g2WLZbNLtRQ?usp=sharing">
       <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab" style="vertical-align: middle;"/>
     </a>
   </span>: This notebook conducts a analysis of the accuracy of bird song identification using the BirdNET model. It includes various visualisations and statistical analyses such as ANOVA to assess the confidence scores of predictions, evaluate species detection across different transects, and examine species richness and correlation metrics.

## Analysing Your Audio Recordings
To analyse your own audio recordings of bird songs:

1. **Upload Your Audio File to Google Colab**: 
- You can upload your audio files directly to the Colab environment or use Google Drive to manage your files.
- To mount Google Drive, use:
   ```{python}
   from google.colab import drive
   drive.mount('/content/drive')
- After mounting, navigate to the directory containing your audio files. For example:
   ```{python}
   audio_file_path = '/content/drive/MyDrive/AudioFolder/audio_file_name.wav'

2. **Run the Analysis Notebook**:
Once your audio file is ready in Colab, proceed with using the relevant notebooks depending on your requirements. Below is some advice on how you could proceed:

   1. **Evaluate Processing Time with Time Test**:

      - Before converting your audio recordings into CSV data, you might want to run the time test notebook to get an idea of how long the processing will take and to evaluate the consistency of BirdNET's performance.
      
      - Steps:
        - Open the Time Test notebook in Colab.
        - Specify the file path for your audio file.
        - Run the cells to conduct the timing analysis.

   2. **Convert Audio to CSV**:

    - This step is mandatory to convert your audio files into a structured CSV format using the BirdNET model. This notebook extracts bird species data from the recordings.

   - Steps:
      - Open the BirdNET Audio to CSV notebook.
      - Specify the file path for your audio file.
      - Run the cells to process the audio and generate the CSV data.

   3. **Merge Multiple CSV Files**:

    - If you have multiple CSV files, this notebook will help you merge them into a single comprehensive dataframe. Even if you have only one CSV, you can use this notebook to ensure your CSV is in the correct format and to save it as an Excel file if required.

    - Steps:
      - Open the Merge Multiple CSV Files notebook.
      - Specify the paths of the CSV files.
      - Run the cells to merge the data and save it in the desired format.

   4. **Conduct Data Analysis**:

    - Use this notebook to perform an in-depth analysis of the accuracy and reliability of bird species identification. This includes visualisations and statistical analyses such as ANOVA, species richness, and correlation metrics.
    
    - Steps:
      - Open the Data Analysis on Bird Song Identification Accuracy notebook.
      - Use the CSV data generated from the BirdNET Audio to CSV notebook.
      - Run the cells to perform the analysis.
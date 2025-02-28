<div align="center">
  <h1>BirdNET Project 🐦</h1>
  <p>
    <img src="Files/img/bird_readme.png" alt="BirdNET Banner" width="180px">
  </p>
  <p><b>AI-powered bird song analysis using BirdNET</b></p>
</div>

---

## **Overview**
The **BirdNET Project** leverages an AI model to analyse **bird songs** and **identify species** from audio recordings.  
This repository contains **Jupyter Notebooks** for **preprocessing, analysing, and evaluating bird song data**.


## **Table of Contents**
- [Overview](#overview)
- [Features](#features)
- [Using This Repository](#using-this-repository)
- [Analysing Your Audio Recordings](#analysing-your-audio-recordings)
- [License](#license)

---

## **Features**
- **Analyse bird songs using AI** (BirdNET Model)
- **Process audio files into structured CSV data**
- **Visualise detection trends with box plots, histograms, and heatmaps**
- **Evaluate BirdNET accuracy using statistical analysis (ANOVA, Confusion Matrices)**
- **Compare AI detection vs. human observations**

---

## Using This Repository
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
     <a href="https://colab.research.google.com/github/Jamess200/BirdnetProject/blob/main/Files/scripts/Drafts%26Preprocessing/BirdNET_Time_Test.ipynb">
       <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab" style="vertical-align: middle;"/>
     </a>
   </span>: This notebook evaluates the processing times for analysing audio recordings of bird songs using the BirdNET AI model. It tests the performance of the model by timing the analysis of multiple selected audio files, comparing processing times across different files, and identifying significant variability using a one-way ANOVA analysis. The notebook generates visualisations such as box plots to assess performance and stores the timing data in a structured CSV format for further analysis.

- **BirdNET Audio to CSV**:

   <span style="display:inline-block; margin-left: 10px;">
     <a href="https://colab.research.google.com/github/Jamess200/BirdnetProject/blob/main/Files/scripts/BirdNETAudio_To_CSV.ipynb">
       <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab" style="vertical-align: middle;"/>
     </a>
   </span>: This notebook is used for processing each trasects audio files indevidually with the BirdNET model to extract bird song data into a CSV format. It serves as the primary tool for converting audio inputs into structured tidy data, including identified bird species and confidence levels that can be used for further analysis.

- **Testing BirdNET Accuracy**:

   <span style="display:inline-block; margin-left: 10px;">
     <a href="https://colab.research.google.com/github/Jamess200/BirdnetProject/blob/main/Files/scripts/Bird_Accuracy.ipynb">
       <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab" style="vertical-align: middle;"/>
     </a>
   </span>: This notebook performs a comprehensive analysis of bird detection data from the BirdNET model, including preprocessing, statistical analysis (such as ANOVA), and generating visualisations like box plots, histograms, bar charts, and heatmaps to explore species detection trends, confidence scores, and species richness across transects.

- **AI vs Human observations Confusion Matrices**:

   <span style="display:inline-block; margin-left: 10px;">
     <a href="https://colab.research.google.com/github/Jamess200/BirdnetProject/blob/main/Files/scripts/Main_AI_Human.ipynb">
       <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab" style="vertical-align: middle;"/>
     </a>
   </span>: This notebook analyses the accuracy of bird song identification using the BirdNET model. It generates confusion matrices to compare AI-detected species against human observations for all and individual transects. The notebook also calculates metrics like sensitivity, specificity, and detection percentages, providing detailed insights into AI performance in species detection.

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

    - This step is mandatory to convert your audio files into a structured CSV format using the BirdNET model. This notebook extracts bird species data from the recordings and if you have multiple CSV files, this notebook will help you merge them into a single comprehensive dataframe. Even if you have only one CSV, you can use this notebook to ensure your CSV is in the correct format and to save it as an Excel file if required.

   - Steps:
      - Open the BirdNET Audio to CSV notebook.
      - Specify the file path for your audio file.
      - Run the cells to process the audio and generate the CSV data.
      - Specify the paths of the CSV files.
      - Run the cells to merge the data and save it in the desired format.

   3. **Test BirdNET accuracy**:

    - This notebook allows you to evaluate the accuracy of the BirdNET AI model for your audio files by analysing confidence scores, species detection frequency, and other metrics.

    - Steps:
      - Open the Bird Accuracy notebook in Colab.
      - Specify the paths of the processed CSV files (e.g., transect_combined.csv).
      - Run the notebook cells to conduct analyses such as:
        - Visualizing confidence score distributions.
        - Performing statistical analyses (e.g., ANOVA).
        - Generating heatmaps and correlation metrics.

   4. **AI vs Human Observations Analysis**:

    - Use this notebook to analyze the accuracy of bird species identification by comparing AI-detected species to human observations. This includes generating confusion matrices, calculating metrics such as sensitivity and specificity, and evaluating detection percentages. Additional analyses include species richness and correlation metrics.
    
    - Steps:
      - Open the AI vs Human Observations Analysis notebook.
      - Use the CSV data generated from the BirdNET Audio to CSV notebook.
      - Run the cells to generate confusion matrices, calculate performance metrics, and analyse species detection.
     
## **License**
This project is licensed under the MIT License – feel free to use and modify!

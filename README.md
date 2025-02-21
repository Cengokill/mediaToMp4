# Media to MP4 Converter
This `.bat` script automatically converts all `.media` files in a folder to `.mp4` using **FFmpeg**.

![image](https://github.com/user-attachments/assets/f778c19b-6a1c-4f5a-832e-a2a2fdfc701b)

## Installing FFmpeg

1. **Download FFmpeg**  
   - Visit the official website: [https://ffmpeg.org/download.html](https://ffmpeg.org/download.html)  
   - Download the **Windows** static version.  

2. **Add FFmpeg to the PATH**  
   - Extract the downloaded archive.  
   - Open the `bin` folder and copy its path (e.g., `C:\ffmpeg\bin`).  
   - Open **Windows Environment Variables**.  
   - In **System Variables**, find the **Path** variable, select it, and click **Edit**.  
   - Click **New**, paste `C:\ffmpeg\bin`, and confirm with **OK**.  
   - Open a command prompt (`Win + R`, type `cmd`, then `ffmpeg -version`).  
   - If FFmpeg displays version details, it is correctly installed!

## How to Use

1. **Download the `convert_media_to_mp4.bat` file** (or create a `.bat` file with the provided script).  
2. **Run the script** by double-clicking it.  
3. **Enter the folder path** containing the `.media` files.  
4. The conversion will start automatically!  

## How It Works

- The script asks for the folder path containing `.media` files.  
- It checks if FFmpeg is installed and accessible.  
- It scans all `.media` files and converts them to `.mp4` using FFmpeg.  
- The conversion uses **H.264** for video and **AAC** for audio with **medium compression** (`-preset medium -crf 20`).  
- A progress bar appears to track the conversion.  
- Once completed, a message confirms the process is finished.  

## Notes

- Ensure FFmpeg is correctly installed and accessible in the `PATH`.  
- This script works on **Windows** only.
- You can change the compression level with veryslow, slow, medium, fast, superfast words

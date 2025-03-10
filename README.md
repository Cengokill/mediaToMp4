# Media to MP4 Converter <img style="display:inline-flex;width:90px;height:90px;vertical-align: middle;" src="https://github.com/user-attachments/assets/f778c19b-6a1c-4f5a-832e-a2a2fdfc701b">
This `.bat` script automatically converts all `.media` files in a folder to `.mp4` using **FFmpeg**. Works only on Windows systems.

### What is a .media file ?
A `.media` file is typically a video file format used by specific security camera systems to store footage. These files are often part of a proprietary format, meaning they may require the manufacturer’s software to view or manage.

Playing `.media` files can be challenging without the right tools, as they aren’t standard media formats like .mp4 or .avi. Some users have successfully converted these files to more common formats using tools like FFmpeg, allowing playback with standard media players like VLC.

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

1. **Download the `MediaToMp4Converter.bat` file** (or create a `.bat` file with the provided script).  
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

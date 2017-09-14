#!/bash/bin
#Bash script to find and move files with certain extension once you have navigated to parent folder

#example
find . -name \*.narrowPeak -exec cp {} /FIMO_Project/dap_data_v4/copy_peaks \;

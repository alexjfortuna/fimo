#Bash script for bedtools getfasta

for f in copy_peaks/*.narrowPeak
do
r=`echo $f | cut -f 3 -d '/' | sed s/narrowPeak/fasta/`
bedtools getfasta -fi /FIMO_Project/TAIR10_seq_chr/TAIR10_Chr.fasta -bed $f > $r
done

#perform individual fimo run

fimo --text --parse-genomic-coord --bgfile bg.txt copy_motifs/ABI5_col_v3h.txt fasta_peaks/ABI5_col_v3h.fasta

#batch fimo on all motifs and databases
#assumes I have navigated to parent dir for these folders

for m in copy_motifs/*.txt
do
  r = echo $m

for p in fasta_peaks/*.fasta
do
  f = echo $p

fimo --text --parse-genomic-coord --bgfile bg.txt $m $p

done

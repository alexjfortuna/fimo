# setting the directories where to look for  FASTA and MOTIF files
FASTAdir=fasta_peaks
MOTIFSdir=copy_motifs

OUTPUTdir=fimo_out2

# accounting for the files without extensions
MOTIFSfiles=$(ls -1 $MOTIFSdir| sed -e 's/\.txt$//')
FASTAfiles=$(ls -1 $FASTAdir | sed -e 's/\.fasta//')


#echo $TXTfiles
#echo $FASTAfiles

# loop over FASTA files
for i in $FASTAfiles ; do
	#ls $MOTIFSdir/$i.txt $FASTAdir/$i.fasta;
	fimo --text --bgfile bg.txt $MOTIFSdir/$i.txt $FASTAdir/$i.fasta > $OUTPUTdir/$i-fimo.out &
done


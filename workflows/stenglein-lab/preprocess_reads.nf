include { PREPROCESS_READS                           } from '../../subworkflows/stenglein-lab/preprocess_reads'

workflow PREPROCESS_READS_WORKFLOW {                                                    

 take:
  fastq_dir                 // the path to a directory containing fastq file(s) or a comma-separated list of dirs
  fastq_pattern             // the regex that will be matched
  collapse_duplicate_reads  // the regex that will be matched

 main:
  PREPROCESS_READS(fastq_dir, fastq_pattern, collapse_duplicate_reads)

 emit:
  versions      = PREPROCESS_READS.out.versions
  multiqc_files = PREPROCESS_READS.out.multiqc_files
  fastq_counts  = PREPROCESS_READS.out.fastq_counts
  reads         = PREPROCESS_READS.out.reads
}


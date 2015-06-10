# Galaxy - Metagenomics
#
# VERSION       0.1

FROM bgruening/galaxy-stable:15.03

MAINTAINER Björn A. Grüning, bjoern.gruening@gmail.com

ENV GALAXY_CONFIG_BRAND Galaxy Metagenomics

# Install SimilaritySearch Tools
RUN install-repository \
    "--url https://toolshed.g2.bx.psu.edu/ -o bgruening --name diamond --panel-section-name SimilaritySearch" \
    "--url https://toolshed.g2.bx.psu.edu/ -o devteam --name blast_datatypes" \
    "--url https://toolshed.g2.bx.psu.edu/ -o peterjc --name blastxml_to_top_descr --panel-section-name SimilaritySearch" \
    "--url https://toolshed.g2.bx.psu.edu/ -o peterjc --name blast_rbh --panel-section-name SimilaritySearch" \
    "--url https://toolshed.g2.bx.psu.edu/ -o iuc --name package_blast_plus_2_2_29" \
    "--url https://toolshed.g2.bx.psu.edu/ -o devteam --name ncbi_blast_plus --panel-section-name SimilaritySearch" \
    "--url https://testtoolshed.g2.bx.psu.edu/ -o iuc --name vsearch --panel-section-name SimilaritySearch" \
    "--url https://testtoolshed.g2.bx.psu.edu/ -o devteam --name suite_kraken_0_10_5 --panel-section-name SimilaritySearch"


RUN install-repository \
    "--url https://toolshed.g2.bx.psu.edu/ -o devteam --name cd_hit_dup" \
    "--url https://toolshed.g2.bx.psu.edu/ -o cmonjeau --name commet" \
    "--url https://toolshed.g2.bx.psu.edu/ -o devteam --name gi2taxonomy"


RUN install-repository \
    "--url http://toolshed.g2.bx.psu.edu/ -o clustalomega --name clustalomega --panel-section-name SequenceClustering" \
    "--url http://toolshed.g2.bx.psu.edu/ -o devteam --name clustalw --panel-section-name SequenceClustering"


# FASTA tools
RUN install-repository \
    "--url http://toolshed.g2.bx.psu.edu/ -o devteam --name fasta_compute_length --panel-section-name FASTATools" \
    "--url http://toolshed.g2.bx.psu.edu/ -o galaxyp --name fasta_merge_files_and_filter_unique_sequences --panel-section-name FASTATools" \
    "--url http://toolshed.g2.bx.psu.edu/ -o peterjc --name seq_filter_by_id --panel-section-name FASTATools" \
    "--url http://toolshed.g2.bx.psu.edu/ -o peterjc --name seq_rename --panel-section-name FASTATools" \
    "--url http://toolshed.g2.bx.psu.edu/ -o peterjc --name seq_select_by_id --panel-section-name FASTATools" \
    "--url http://toolshed.g2.bx.psu.edu/ -o peterjc --name get_orfs_or_cdss --panel-section-name FASTATools" \
    "--url http://toolshed.g2.bx.psu.edu/ -o devteam --name fasta_formatter --panel-section-name FASTATools" \
    "--url http://toolshed.g2.bx.psu.edu/ -o devteam --name fasta_nucleotide_changer --panel-section-name FASTATools" \
    "--url http://toolshed.g2.bx.psu.edu/ -o devteam --name fasta_to_tabular --panel-section-name FASTATools" \
    "--url http://toolshed.g2.bx.psu.edu/ -o devteam --name tabular_to_fasta --panel-section-name FASTATools" \
    "--url http://toolshed.g2.bx.psu.edu/ -o bgruening --name find_subsequences --panel-section-name FASTATools"

# EMBOSS
RUN install-repository \
    "--url http://toolshed.g2.bx.psu.edu/ -o devteam --name package_emboss_5_0_0" \
    "--url http://toolshed.g2.bx.psu.edu/ -o devteam --name emboss_5 --panel-section-name EMBOSS"





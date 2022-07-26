# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions


## prompt set by gyw
#export PS1="\[\e[31;1m\]<高算>\[\e[35;1m\]\u@\h:\[\e[32;1m\]\w\[\e[0m\]\n\[\e[0m\]\[\e[36;1m\][\t]\[\e[33;1m\]☪\[\e[0m\]"
#export PS1="\[\e[31;1m\]"高算" \h \[\e[1m\]\[\e[35;1m\]\u \[\e[1m\]\[\e[32;1m\]\w\[\e[0m\] \n\[\e[36;1m\][\t]\[\e[33;1m\]☪\[\e[0m\]"
export PS1="\[\e[31;1m\]高算 \[\e[35;1m\]\h \[\e[34;1m\]\u \[\e[36;1m\]\d \t \[\e[32;1m\]\$PWD/ (\$(ls -A|wc -l))\[\e[0m\] \n\[\e[0m\]\[\e[33;1m\]\$\[\e[0m\]"

# alias set by gyw
alias ch="chmod +x"
alias les="less -S"             # 不换行显示
alias kes="less -S"
alias la='ls -Al'               # 显示隐藏文件
alias ls='ls -hF --color'   # 为识别的文件类型添加颜色
alias lk='ls -lSr'              # 按尺寸排序
alias lr='ls -lR'               # 递归ls
alias lt='ls -ltr'              # 按日期排序
alias du='du -kh'    # Makes a more readable output.
alias df='df -kTh'
alias h="history | less"
alias wl="wc -l"
alias vb="vi ~/.bashrc"
alias sb="source ~/.bashrc"
alias vv="vi ~/.vimrc"
alias untar="tar -zxf"
alias l='ls -lthr --color=auto'
alias lll='ls -althr'
alias lss='ls -s --color'
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~"
alias rm="rm -I"
alias ct="cleartrash"
alias CAT="cat -A"
alias mv="mv -i"
alias cp="cp -i"  
alias cdl='function __cdl(){ if [ $# == 1 ]; then cd $1; ls -al; unset -f __cdl; fi }; __cdl'
alias cdls='function __cdls(){ if [ $# == 1 ]; then cd $1; ls; unset -f __cdls; fi }; __cdls'
alias cdlss='function __cdlss(){ if [ $# == 1 ]; then cd $1; ls -s; unset -f __cdlss; fi }; __cdlss'
alias mkcd='function __mkcd(){ if [ $# == 1 ]; then mkdir $1; cd $1; unset -f __mkcd; elif [ $# == 2 ]; then mkdir $1 $2; cd $2; unset -f __mkcd; fi }; __mkcd'
alias sc="screen"
# alias of jobs
alias  jj="jjobs -w"
alias  jql="jqueues|less"
alias  jl="jjobs -w -u all | less"
alias  jk="jctrl kill"
alias  jq="jqueues"
alias  rjsub="jsub -R \"rusage[res=1]span[hosts=1]\""
alias  bjsub="jsub -R \"rusage[res=1]span[hosts=1]\" -q jyqueue"
alias  sjsub="jsub -R \"rusage[res=1]span[hosts=1]\" -q jynodequeue"
alias  mjsub="jsub -R \"rusage[res=1]span[hosts=1]\" -q mem128queue"
alias  djsub="jsub -R \"rusage[res=1]span[hosts=1]\" -q denovoqueue"
alias  cjsub="jsub -R \"rusage[res=1]span[hosts=1]\" -q cpu6130"
alias  njsub="jsub -R \"rusage[res=1]span[hosts=1]\" -q normal"

# alias of members
export zzq=/stor9000/apps/users/NWSUAF/2015060152
export cyd=/stor9000/apps/users/NWSUAF/2012010954
export lm=/stor9000/apps/users/NWSUAF/2015050469
export bpp=/stor9000/apps/users/NWSUAF/2015010706
export zsj=/stor9000/apps/users/NWSUAF/2015010869
export zy=/stor9000/apps/users/NWSUAF/2015010719
export lxy=/stor9000/apps/users/NWSUAF/2015010778

# path added by gyw
export PATH=/stor9000/apps/appsoftware/BioSoftware/bin:$PATH 
export PATH=/usr/local/bin:$PATH
export PATH=/stor9000/apps/appsoftware:$PATH

# VARIABLES
export REF_CHIP="/stor9000/apps/users/NWSUAF/2015010726/Sheep/reference/Oar4.0/Oar4.0_add_CPY_for_target_seq/Oar4.0_add_CPY.fa"
export REF_OAR4="/stor9000/apps/users/NWSUAF/2015010726/Sheep/reference/Oar4.0/GCF_000298735.2_Oar_v4.0_genomic_rename.fna"
export REF_OAR3="/stor9000/apps/users/NWSUAF/2015010726/Sheep/reference/Oar3.1/GCF_000298735.1_Oar_v3.1_genomic_rename.fna"
export REF_OAR1="/stor9000/apps/users/NWSUAF/2015010726/Sheep/reference/Oar_rambouillet_v1.0/GCF_002742125.1_Oar_rambouillet_v1.0_genomic.rename.AddY.fna"

# blast
export PATH="/stor9000/apps/users/NWSUAF/2012010954/Software/ncbi-blast-2.7.1+/bin:$PATH"

# muscle
export PATH="/stor9000/apps/users/NWSUAF/2012010954/Software/muscle/:$PATH"

# qualimap
export PATH=/stor9000/apps/users/NWSUAF/2013110098/bin/qualimap_v2.2:$PATH

# vcftools
export PATH="/stor9000/apps/appsoftware/BioSoftware/bin:$PATH"
alias vcftools="/stor9000/apps/appsoftware/BioSoftware/software/vcftools-0.1.14/bin/vcftools"

# gatk
export GATK=/stor9000/apps/users/NWSUAF/2016050001/software/GenomeAnalysisTK.jar
export GATK3=/stor9000/apps/appsoftware/BioSoftware/software/GATK/GenomeAnalysisTK.jar
export gatk3="/stor9000/apps/users/NWSUAF/2012010954/Software/GATK3.8/GenomeAnalysisTK.jar"
export gatk4="/stor9000/apps/users/NWSUAF/2015060152/bin/gatk-4.1.2.0/gatk"
# plink
alias plink="/stor9000/apps/users/NWSUAF/2012010954/Software/plink"
export PATH="/stor9000/apps/users/NWSUAF/2012010954/Software:$PATH"

# samtools 
#export PATH="/stor9000/apps/users/NWSUAF/2014010784/software/samtools/samtools1.11/bin:$PATH"
#alias samtools="/stor9000/apps/users/NWSUAF/2014010784/software/samtools/samtools1.11/bin/samtools"
#export PATH="/stor9000/apps/users/NWSUAF/2012010954/Software/samtools/samtools-1.10:$PATH"
#alias samtools="/stor9000/apps/users/NWSUAF/2012010954/Software/samtools/samtools-1.10/samtools"

# bcftools
#export PATH="/stor9000/apps/users/NWSUAF/2014010784/software/samtools/bcftools1.11/bin/:$PATH"
#alias bcftools="/stor9000/apps/users/NWSUAF/2014010784/software/samtools/bcftools1.11/bin/bcftools"
#export PATH="/stor9000/apps/users/NWSUAF/2012010954/Software/bcftools/bcftools-1.10.2:$PATH"


# htslib1.8
export PATH="/stor9000/apps/users/NWSUAF/2012010954/Software/htslib1.8/bin:$PATH"


# picard 
export PATH="/stor9000/apps/users/NWSUAF/2012010954/Software/picard-tools-2.16.0:$PATH"
alias picard="/stor9000/apps/users/NWSUAF/2012010954/Software/picard-tools-2.16.0/picard.jar"





# minimap2
export PATH="/stor9000/apps/users/NWSUAF/2014010669/software/minimap2-2.17_x64-linux/:$PATH"
alias minimap2="/stor9000/apps/users/NWSUAF/2014010669/software/minimap2-2.17_x64-linux/minimap2"

# mosdepth
alias mosdepth="/stor9000/apps/users/NWSUAF/2012010954/Software/mosdepth"

#EIGENSOFT
export PATH="/stor9000/apps/users/NWSUAF/2015060152/bin/EIG-6.1.4/bin/:$PATH"


#fasta_toolkit
export PATH="/stor9000/apps/users/NWSUAF/2015010726/software/fastx_toolkit_0.0.13:$PATH"

# annovar
export PATH="/stor9000/apps/users/NWSUAF/2015010726/software/annovar:$PATH"


# mybin

# 新版GCC
export LD_LIBRARY_PATH="/stor9000/apps/users/NWSUAF/2012010954/Software/GCC/installFile/gmp-6.1.2/lib:$LD_LIBRARY_PATH"
export LD_RUN_PATH="/stor9000/apps/users/NWSUAF/2012010954/Software/GCC/installFile/gmp-6.1.2/lib:$LD_RUN_PATH"
export LD_LIBRARY_PATH="/stor9000/apps/users/NWSUAF/2012010954/Software/GCC/installFile/mpfr-3.1.6/lib:$LD_LIBRARY_PATH"
export LD_RUN_PATH="/stor9000/apps/users/NWSUAF/2012010954/Software/GCC/installFile/mpfr-3.1.6/lib:$LD_RUN_PATH"
export LD_LIBRARY_PATH="/stor9000/apps/users/NWSUAF/2012010954/Software/GCC/installFile/mpc-1.0.3/lib:$LD_LIBRARY_PATH"
export LD_RUN_PATH="/stor9000/apps/users/NWSUAF/2012010954/Software/GCC/installFile/mpc-1.0.3/lib:$LD_RUN_PATH"
export LD_LIBRARY_PATH="/stor9000/apps/users/NWSUAF/2012010954/Software/GCC/installFile/gcc-5.5.0/lib/../lib64:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="/stor9000/apps/users/NWSUAF/2012010954/Software/zlib1.2.11/lib:$LD_LIBRARY_PATH"
#export LD_RUN_PATH="/stor9000/apps/users/NWSUAF/2012010954/Software/GCC/installFile/gcc-5.5.0/lib/../lib64:$LD_RUN_PATH"
#export PATH="/stor9000/apps/users/NWSUAF/2012010954/Software/GCC/installFile/gcc-5.5.0/bin:$PATH"

# GLIBC2.14
export LD_LIBRARY_PATH=/stor9000/apps/users/NWSUAF/2015010726/software/glibc-2.14/lib:$LD_LIBRARY_PATH

# sentieon
#export SENTIEON_LICENSE=172.16.112.119:8990
#export SENTIEON_PYTHON=/stor9000/apps/users/NWSUAF/2012010954/Software/Anaconda4.4_py3.6/envs/python2/bin/python
#export SENTIEON_TMPDIR=/stor9000/apps/users/NWSUAF/2015010726/files/tmp/
#export PATH="/stor9000/apps/users/NWSUAF/2012010954/Software/Sentieon/sentieon-genomics-201911/bin:$PATH"


# python3
export PATH="/stor9000/apps/users/NWSUAF/2012010954/Software/anaconda/anaconda3_2020_07/bin:$PATH"
alias python3="/stor9000/apps/users/NWSUAF/2012010954/Software/anaconda/anaconda3_2020_07/bin/python"
#export PYTHONPATH="/stor9000/apps/users/NWSUAF/2012010954/Software/Anaconda4.4_py3.6/lib/python3.6/site-packages:$PYTHONPATH"
export PYTHONPATH="/stor9000/apps/users/NWSUAF/2012010954/Software/anaconda/anaconda3_2020_07/lib/python3.8/site-packages:$PYTHONPATH"

# R3.5.1
alias R="/stor9000/apps/users/NWSUAF/2018055219/anaconda3/bin/R"
alias Rscript="/stor9000/apps/users/NWSUAF/2018055219/anaconda3/bin/Rscript"
# ruby-2.6.6
export PATH="/stor9000/apps/users/NWSUAF/2015010726/software/ruby-2.6.6/ruby-2.6.6/:$PATH"

# sratoolkit
export PATH="/stor9000/apps/users/NWSUAF/2012010954/Software/sratoolkit.2.9.1-1-centos_linux64/bin/:$PATH"

# mapDamage
export PATH="/stor9000/apps/users/NWSUAF/2014010784/software/adapterremoval2.3.1/bin:$PATH"
export PATH="/stor9000/apps/users/NWSUAF/2012010954/Software/bwa-0.7.17:$PATH"
export PATH="/stor9000/apps/users/NWSUAF/2015010726/.local/bin:$PATH"
export PATH="/stor9000/apps/appsoftware/R-3.6.1/bin:$PATH"
export R_LIBS="/stor9000/apps/users/NWSUAF/2014010784/R/library:$R_LIBS"

## added by smcpp 1.15.2 installer
## >>> conda init >>>
## !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$(CONDA_REPORT_ERRORS=false '/stor9000/apps/users/NWSUAF/2015010726/smcpp/bin/conda' shell.bash hook 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    \eval "$__conda_setup"
#else
#    if [ -f "/stor9000/apps/users/NWSUAF/2015010726/smcpp/etc/profile.d/conda.sh" ]; then
#        . "/stor9000/apps/users/NWSUAF/2015010726/smcpp/etc/profile.d/conda.sh"
#        CONDA_CHANGEPS1=false conda activate base
#    else
#        \export PATH="/stor9000/apps/users/NWSUAF/2015010726/smcpp/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda init <<<


# smc++
#export PATH="/stor9000/apps/users/NWSUAF/2015010726/smcpp/bin:$PATH"
#export PYTHONPATH="/stor9000/apps/users/NWSUAF/2015010726/smcpp/lib/python3.6/site-packages:$PYTHONPATH"

# again PS1
#export PS1="\[\e[31;1m\]高算 \[\e[35;1m\]\h \[\e[34;1m\]\u \[\e[36;1m\]\d \t \[\e[32;1m\]\$PWD/ (\$(ls -A|wc -l))\[\e[0m\] \n\[\e[0m\]\[\e[33;1m\]\$\[\e[0m\]"


# emmax
export PATH="/stor9000/apps/users/NWSUAF/2015010726/software/emmax/:$PATH"

# bcftools
export PATH="/stor9000/apps/users/NWSUAF/20120109540/Software/HTSlib/bcftools/bcftools-1.12/bin/:$PATH"
alias bcftools="/stor9000/apps/users/NWSUAF/20120109540/Software/HTSlib/bcftools/bcftools-1.12/bin/bcftools"

# samtools
export PATH="/stor9000/apps/users/NWSUAF/2014010784/software/samtools/samtools-1.12/:$PATH"
alias samtools="/stor9000/apps/users/NWSUAF/2014010784/software/samtools/samtools-1.12/samtools"

# dos2unix
export PATH="/stor9000/apps/users/NWSUAF/2015010726/software/dos2unix-7.4.2/:$PATH"

# screen
alias screen="/stor9000/apps/users/NWSUAF/2015010726/software/screen-4.8.0/build/screen"

# cmake
alias cmake="/stor9000/apps/users/NWSUAF/2015010726/software/cmake-3.22.1-linux-x86_64/bin/cmake"

# Relate
export PATH="/stor9000/apps/users/NWSUAF/2015010726/software/relate_v1.1.8_x86_64_static/bin/:$PATH"

# plink2
export PATH="/stor9000/apps/users/NWSUAF/20120109540/Software/Plink2/2021_28Mar/plink2_linux_x86_64_20210328:$PATH"

# mybin
export PATH="/stor9000/apps/users/NWSUAF/2015010726/software/bin:$PATH"

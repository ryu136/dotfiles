#--------コピーや削除などの確認----------
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ll='ls -i'


if [ ${UID} -eq 0 ]; then
		PS1="\[\033[31m\]\u@\h\[\033[00m\]:\[\033[01m\]\w\[\033[00m\]\\$ "
else
		PS1="\[\033[36m\]\u@\h\[\033[00m\]:\[\033[01m\]\w\[\033[00m\]\\$ "
fi

export PATH="/usr/local/cuda/bin:$PATH"
export PATH="/home/ryuta-sh/.local/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda/lib64:${LD_LIBRARY_PATH}"
 
## CUDA and cuDNN paths
export PATH=/usr/local/cuda-9.2:${PATH}
export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64:${LD_LIBRARY_PATH}

## gcc update
export CXX='g++-7'
export CXX='gcc-7'

#export CUDA_ROOT = /usr/local/cuda-7.5
#export PATTH=/usr/local/cuda-7.5/bin:$PATH
#export LD_LIBRARY_PATH=/usr/local/cuda-7.5/lib64:/usr/local/cuda-7.5/lib:$LD_LIBRARY_PATH
#export CPATH=/usr/local/cuda-7.5/include:$CPATH


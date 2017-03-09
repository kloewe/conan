#-----------------------------------------------------------------------------
# File    : makefile
# Contents: build MEX files and install conan by adding the relevant
#           directories to the Matlab path
#
# Author  : Kristian Loewe
#-----------------------------------------------------------------------------

THISDIR = $(CURDIR)
INSTALLCMD = addpath('$(CURDIR)/mod/corr-m'); \
             addpath('$(CURDIR)/mod/cpuinfo-m'); \
             addpath('$(CURDIR)/mod/fconn-m'); \
             addpath('$(CURDIR)/mod/util-m/circos'); \
             addpath('$(CURDIR)/mod/util-m/data'); \
             addpath('$(CURDIR)/mod/util-m/file'); \
             addpath('$(CURDIR)/mod/util-m/mri'); \
             savepath

MATLABROOT = $(dir $(realpath $(shell which matlab)))
MATLAB = $(realpath $(MATLABROOT))/matlab
MEX = $(realpath $(MATLABROOT))/mex

all:
	@if [ -e "$(MEX)" ]; then \
	  $(MAKE) -C mod/corr-m/src; \
	  $(MAKE) -C mod/cpuinfo-m/src; \
	  $(MAKE) -C mod/fconn-m/src; \
	else \
	  echo "Error: mex not found."; \
	  echo "You may have to add MATLABROOT/bin to your path."; \
	fi

install:
	@if [ -e "$(MATLAB)" ]; then \
	  $(MATLAB) -nodisplay -nojvm -nosplash -logfile install.log \
	  -r "try; $(INSTALLCMD); catch; quit; end; quit;" > /dev/null; \
	  grep -m1 -E 'Error|Warning' install.log; \
	  status=$$?; \
	  if [ $$status -eq 0 ]; then \
	    cat install.log; \
	  fi \
	else \
	  echo "Error: matlab not found."; \
	  echo "You may have to add MATLABROOT/bin to your path."; \
	fi

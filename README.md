# AI Planning

## Installing singularity

There are two ways to install `singularity` we can take a look in the following guide: https://docs.sylabs.io/guides/3.5/admin-guide/installation.html

* One approach is to build from sources
* Second approach (taking advantage of using an Ubuntu flavor) download the .deb file from the repository: https://github.com/sylabs/singularity/releases


## Build planner

Planner Repository: https://bitbucket.org/ipc2018-classical/team23/src/master/

Please consider that `Singularity` file is present in the following branches:
* ipc2018
* ipc2018-seq-opt

- Download or copy `Singularity` file from repository
- Build planner image by executing the following command: 
```
sudo singularity build planner.img Singularity
```

Once the planner.img file is created we can solve the snake problem

## Snake

Following similar approach from prior section, we can download `domain.pddl` file and `p01.pddl` file from domain repository: https://bitbucket.org/ipc2018-classical/domains/src/ipc-2018/opt/snake/

Or just copy raw files:
- https://bitbucket.org/ipc2018-classical/domains/raw/3d1c263f60d0d1343c6b8627e968289bd4ce9a71/opt/snake/domain.pddl
- https://bitbucket.org/ipc2018-classical/domains/raw/3d1c263f60d0d1343c6b8627e968289bd4ce9a71/opt/snake/p01.pddl

Then we can execute the plan:

```
RUNDIR="$(pwd)"
DOMAIN="$RUNDIR/domain.pddl"
PROBLEM="$RUNDIR/p01.pddl"
PLANFILE="$RUNDIR/sas_plan"
COSTBOUND=42 # only in cost-bounded track
ulimit -t 1800
ulimit -v 8388608
singularity run -C -H $RUNDIR ../planner/planner.img $DOMAIN $PROBLEM $PLANFILE $COSTBOUND
```

Please consider that files are using this repository folder structure


#!/bin/bash

RUNDIR="$(pwd)"
DOMAIN="$RUNDIR/domain.pddl"
PROBLEM="$RUNDIR/p01.pddl"
PLANFILE="$RUNDIR/sas_plan"
COSTBOUND=42 # only in cost-bounded track
ulimit -t 1800
ulimit -v 8388608
singularity run -C -H $RUNDIR ../planner/planner.img $DOMAIN $PROBLEM $PLANFILE $COSTBOUND

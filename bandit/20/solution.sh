#!/usr/bin/env bash

echo password: GbKksEFF4yrVs6il55v6gwY5aVje5f0j
echo create job 'nc -l -p 12345 &'
echo create job './suconnect 12345 &'
echo switch job 'fg 1'
echo send 'GbKksEFF4yrVs6il55v6gwY5aVje5f0j'
echo kill jobs
ssh -p 2220 bandit20@bandit.labs.overthewire.org


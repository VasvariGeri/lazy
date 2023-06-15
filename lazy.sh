#!/bin/bash

init(){
    HISTFILE=$PWD
    history -c
    history -w
}
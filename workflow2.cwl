#!/usr/bin/env cwl-runner

class: Workflow

cwlVersion: "draft-3"

description: "test"

inputs: 

  - id: input
    type: File
    
outputs:

  - id: OUTPUT
    type: File
    source: "#cat/output"

steps:

  - id: gunzip
    run: gunzip2.cwl
    inputs:
    - {id: input, source: "#input"}
    outputs:
    - {id: output}

  - id: cat
    run: cat.cwl
    inputs:
    - {id: input, source: "#gunzip/output"}
    outputs:
    - {id: output}
#!/usr/bin/env cwl-runner

cwlVersion: "draft-3"

class: CommandLineTool

description: "command line: cat"

inputs:

  - id: input
    type: File
    inputBinding:
      position: 0

outputs:
  - id: output
    type: File
    outputBinding:
      glob: test.txt

stdout: test.txt

baseCommand: [cat]
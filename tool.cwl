#!/usr/bin/env cwl-runner

# (Re)generated by BlueBee Platform

$namespaces:
  bb: http://bluebee.com/cwl/
  ilmn-tes: http://platform.illumina.com/rdf/iap/
cwlVersion: cwl:v1.0
class: CommandLineTool
bb:toolVersion: '1'
label: kcutler_SRL_downloadprocess
inputs:
  run_id:
    type: string
    doc: id of the sequencing run whose output you are trying to structure
    inputBinding:
      position: 0
      prefix: --run-id
  api_key:
    type: string
    doc: api key obtained from platform login page
    inputBinding:
      position: 1
      prefix: --api-key
  project_name:
    type: string
    doc: project containing the fastq files
    inputBinding:
      position: 2
      prefix: --project-name
  pgid:
    type: string
    doc: Output folder name. Takes on a PGXXXX format.
    inputBinding:
      position: 3
      prefix: --pgid
  ica_server:
    type: string
    inputBinding:
      position: 4
      prefix: --ica-server
  ica_domain:
    type: string
    inputBinding:
      position: 5
      prefix: --ica-domain
  workgroupname:
    type: string
    inputBinding:
      position: 6
      prefix: --workgroup
  runfastqc:
    type: string
    inputBinding:
      position: 7
      prefix: --runfastqc
  override_date:
    type: string?
    inputBinding:
      position: 8
      prefix: --date
  override_cid:
    type: string?
    inputBinding:
      position: 9
      prefix: --cid
outputs:
  dummyout:
    type: stdout
baseCommand:
- python3
- /opt/project/download_and_process_test.py

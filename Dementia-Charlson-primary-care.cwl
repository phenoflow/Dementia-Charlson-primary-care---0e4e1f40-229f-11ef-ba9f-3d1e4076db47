cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  dementia-charlson-primary-care-dementium---primary:
    run: dementia-charlson-primary-care-dementium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  dementia-charlson-primary-care-degen---primary:
    run: dementia-charlson-primary-care-degen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: dementia-charlson-primary-care-dementium---primary/output
  alcoholic-dementia-charlson-primary-care---primary:
    run: alcoholic-dementia-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: dementia-charlson-primary-care-degen---primary/output
  dementia-charlson-primary-care-scale---primary:
    run: dementia-charlson-primary-care-scale---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: alcoholic-dementia-charlson-primary-care---primary/output
  paranoid-dementia-charlson-primary-care---primary:
    run: paranoid-dementia-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: dementia-charlson-primary-care-scale---primary/output
  dementia-charlson-primary-care-depression---primary:
    run: dementia-charlson-primary-care-depression---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: paranoid-dementia-charlson-primary-care---primary/output
  dementia-charlson-primary-care-letter---primary:
    run: dementia-charlson-primary-care-letter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: dementia-charlson-primary-care-depression---primary/output
  dementia-charlson-primary-care-superimposed---primary:
    run: dementia-charlson-primary-care-superimposed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: dementia-charlson-primary-care-letter---primary/output
  dementia-charlson-primary-care-unspecified---primary:
    run: dementia-charlson-primary-care-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: dementia-charlson-primary-care-superimposed---primary/output
  dementia-charlson-primary-care---primary:
    run: dementia-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: dementia-charlson-primary-care-unspecified---primary/output
  dementia-charlson-primary-care-invite---primary:
    run: dementia-charlson-primary-care-invite---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: dementia-charlson-primary-care---primary/output
  referral-dementia-charlson-primary-care---primary:
    run: referral-dementia-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: dementia-charlson-primary-care-invite---primary/output
  dementia-charlson-primary-care-features---primary:
    run: dementia-charlson-primary-care-features---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: referral-dementia-charlson-primary-care---primary/output
  dementia-charlson-primary-care-alzheimer---primary:
    run: dementia-charlson-primary-care-alzheimer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: dementia-charlson-primary-care-features---primary/output
  dementia-charlson-primary-care-delirium---primary:
    run: dementia-charlson-primary-care-delirium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: dementia-charlson-primary-care-alzheimer---primary/output
  dementia-charlson-primary-care-presenile---primary:
    run: dementia-charlson-primary-care-presenile---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: dementia-charlson-primary-care-delirium---primary/output
  dementia-charlson-primary-care-jakobcreutzfeldt---primary:
    run: dementia-charlson-primary-care-jakobcreutzfeldt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: dementia-charlson-primary-care-presenile---primary/output
  dementia-charlson-primary-care-uncomplicated---primary:
    run: dementia-charlson-primary-care-uncomplicated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: dementia-charlson-primary-care-jakobcreutzfeldt---primary/output
  dementia-charlson-primary-care-indicator---primary:
    run: dementia-charlson-primary-care-indicator---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: dementia-charlson-primary-care-uncomplicated---primary/output
  dementia-charlson-primary-care-picks---primary:
    run: dementia-charlson-primary-care-picks---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: dementia-charlson-primary-care-indicator---primary/output
  vascular-dementia-charlson-primary-care---primary:
    run: vascular-dementia-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: dementia-charlson-primary-care-picks---primary/output
  dementia-charlson-primary-care-excepted---primary:
    run: dementia-charlson-primary-care-excepted---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: vascular-dementia-charlson-primary-care---primary/output
  dementia-charlson-primary-care-onset---primary:
    run: dementia-charlson-primary-care-onset---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: dementia-charlson-primary-care-excepted---primary/output
  chronic-dementia-charlson-primary-care---primary:
    run: chronic-dementia-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: dementia-charlson-primary-care-onset---primary/output
  mixed-dementia-charlson-primary-care---primary:
    run: mixed-dementia-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: chronic-dementia-charlson-primary-care---primary/output
  dementia-charlson-primary-care-deterioration---primary:
    run: dementia-charlson-primary-care-deterioration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: mixed-dementia-charlson-primary-care---primary/output
  dementia-charlson-primary-care-assessment---primary:
    run: dementia-charlson-primary-care-assessment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: dementia-charlson-primary-care-deterioration---primary/output
  subcortical-dementia-charlson-primary-care---primary:
    run: subcortical-dementia-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: dementia-charlson-primary-care-assessment---primary/output
  arteriosclerotic-dementia-charlson-primary-care---primary:
    run: arteriosclerotic-dementia-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: subcortical-dementia-charlson-primary-care---primary/output
  early-dementia-charlson-primary-care---primary:
    run: early-dementia-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: arteriosclerotic-dementia-charlson-primary-care---primary/output
  dementia-charlson-primary-care-parkinsons---primary:
    run: dementia-charlson-primary-care-parkinsons---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: early-dementia-charlson-primary-care---primary/output
  other-dementia-charlson-primary-care---primary:
    run: other-dementia-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: dementia-charlson-primary-care-parkinsons---primary/output
  dementia-charlson-primary-care-monitoring---primary:
    run: dementia-charlson-primary-care-monitoring---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: other-dementia-charlson-primary-care---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: dementia-charlson-primary-care-monitoring---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}

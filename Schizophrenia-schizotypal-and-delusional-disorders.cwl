cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  schizophrenia-schizotypal-and-delusional-disorders-schizophreniform---primary:
    run: schizophrenia-schizotypal-and-delusional-disorders-schizophreniform---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  schizophrenia-schizotypal-and-delusional-disorders-psychosis---primary:
    run: schizophrenia-schizotypal-and-delusional-disorders-psychosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: schizophrenia-schizotypal-and-delusional-disorders-schizophreniform---primary/output
  schizophrenia-schizotypal-and-delusional-disorders-resolved---primary:
    run: schizophrenia-schizotypal-and-delusional-disorders-resolved---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: schizophrenia-schizotypal-and-delusional-disorders-psychosis---primary/output
  schizophrenia-schizotypal-and-delusional-disorders-insight---primary:
    run: schizophrenia-schizotypal-and-delusional-disorders-insight---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: schizophrenia-schizotypal-and-delusional-disorders-resolved---primary/output
  schizophrenia-schizotypal-and-delusional-disorders-psychoses---primary:
    run: schizophrenia-schizotypal-and-delusional-disorders-psychoses---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: schizophrenia-schizotypal-and-delusional-disorders-insight---primary/output
  residual-schizophrenia-schizotypal-and-delusional-disorders---primary:
    run: residual-schizophrenia-schizotypal-and-delusional-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: schizophrenia-schizotypal-and-delusional-disorders-psychoses---primary/output
  cyclic-schizophrenia-schizotypal-and-delusional-disorders---primary:
    run: cyclic-schizophrenia-schizotypal-and-delusional-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: residual-schizophrenia-schizotypal-and-delusional-disorders---primary/output
  atypical-schizophrenia-schizotypal-and-delusional-disorders---primary:
    run: atypical-schizophrenia-schizotypal-and-delusional-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: cyclic-schizophrenia-schizotypal-and-delusional-disorders---primary/output
  schizophrenia-schizotypal-and-delusional-disorders-paranoia---primary:
    run: schizophrenia-schizotypal-and-delusional-disorders-paranoia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: atypical-schizophrenia-schizotypal-and-delusional-disorders---primary/output
  schizophrenia-schizotypal-and-delusional-disorders-sander's---primary:
    run: schizophrenia-schizotypal-and-delusional-disorders-sander's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: schizophrenia-schizotypal-and-delusional-disorders-paranoia---primary/output
  schizophrenia-schizotypal-and-delusional-disorders-paraphrenia---primary:
    run: schizophrenia-schizotypal-and-delusional-disorders-paraphrenia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: schizophrenia-schizotypal-and-delusional-disorders-sander's---primary/output
  schizophrenia-schizotypal-and-delusional-disorders-querulan---primary:
    run: schizophrenia-schizotypal-and-delusional-disorders-querulan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: schizophrenia-schizotypal-and-delusional-disorders-paraphrenia---primary/output
  nonorganic-schizophrenia-schizotypal-and-delusional-disorders---primary:
    run: nonorganic-schizophrenia-schizotypal-and-delusional-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: schizophrenia-schizotypal-and-delusional-disorders-querulan---primary/output
  catatonic-schizophrenia-schizotypal-and-delusional-disorders---primary:
    run: catatonic-schizophrenia-schizotypal-and-delusional-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: nonorganic-schizophrenia-schizotypal-and-delusional-disorders---primary/output
  schizophrenia-schizotypal-and-delusional-disorders-undifferentiated---primary:
    run: schizophrenia-schizotypal-and-delusional-disorders-undifferentiated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: catatonic-schizophrenia-schizotypal-and-delusional-disorders---primary/output
  schizophrenia-schizotypal-and-delusional-disorders---primary:
    run: schizophrenia-schizotypal-and-delusional-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: schizophrenia-schizotypal-and-delusional-disorders-undifferentiated---primary/output
  schizotypal---primary:
    run: schizotypal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: schizophrenia-schizotypal-and-delusional-disorders---primary/output
  persistent-schizophrenia-schizotypal-and-delusional-disorders---primary:
    run: persistent-schizophrenia-schizotypal-and-delusional-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: schizotypal---primary/output
  delusional---primary:
    run: delusional---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: persistent-schizophrenia-schizotypal-and-delusional-disorders---primary/output
  schizophrenia-schizotypal-and-delusional-disorders-capgras---primary:
    run: schizophrenia-schizotypal-and-delusional-disorders-capgras---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: delusional---primary/output
  schizophrenia-schizotypal-and-delusional-disorders-cotard---primary:
    run: schizophrenia-schizotypal-and-delusional-disorders-cotard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: schizophrenia-schizotypal-and-delusional-disorders-capgras---primary/output
  schizoaffective-schizophrenia-schizotypal-and-delusional-disorders---primary:
    run: schizoaffective-schizophrenia-schizotypal-and-delusional-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: schizophrenia-schizotypal-and-delusional-disorders-cotard---primary/output
  manic-schizophrenia-schizotypal-and-delusional-disorders---primary:
    run: manic-schizophrenia-schizotypal-and-delusional-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: schizoaffective-schizophrenia-schizotypal-and-delusional-disorders---primary/output
  depressive-schizophrenia-schizotypal-and-delusional-disorders---primary:
    run: depressive-schizophrenia-schizotypal-and-delusional-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: manic-schizophrenia-schizotypal-and-delusional-disorders---primary/output
  mixed-schizophrenia-schizotypal-and-delusional-disorders---primary:
    run: mixed-schizophrenia-schizotypal-and-delusional-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: depressive-schizophrenia-schizotypal-and-delusional-disorders---primary/output
  other-schizophrenia-schizotypal-and-delusional-disorders---primary:
    run: other-schizophrenia-schizotypal-and-delusional-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: mixed-schizophrenia-schizotypal-and-delusional-disorders---primary/output
  schizophrenia-schizotypal-and-delusional-disorders-unspecified---primary:
    run: schizophrenia-schizotypal-and-delusional-disorders-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: other-schizophrenia-schizotypal-and-delusional-disorders---primary/output
  psychotic-schizophrenia-schizotypal-and-delusional-disorders---primary:
    run: psychotic-schizophrenia-schizotypal-and-delusional-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: schizophrenia-schizotypal-and-delusional-disorders-unspecified---primary/output
  subchronic-schizophrenia-schizotypal-and-delusional-disorders---primary:
    run: subchronic-schizophrenia-schizotypal-and-delusional-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: psychotic-schizophrenia-schizotypal-and-delusional-disorders---primary/output
  schizophrenia---primary:
    run: schizophrenia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: subchronic-schizophrenia-schizotypal-and-delusional-disorders---primary/output
  schizophrenia-schizotypal-and-delusional-disorders-history---primary:
    run: schizophrenia-schizotypal-and-delusional-disorders-history---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: schizophrenia---primary/output
  schizophrenia---secondary:
    run: schizophrenia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: schizophrenia-schizotypal-and-delusional-disorders-history---primary/output
  schizotypal---secondary:
    run: schizotypal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: schizophrenia---secondary/output
  schizophrenia-schizotypal-and-delusional-disorders---secondary:
    run: schizophrenia-schizotypal-and-delusional-disorders---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: schizotypal---secondary/output
  schizoaffective-schizophrenia-schizotypal-and-delusional-disorders---secondary:
    run: schizoaffective-schizophrenia-schizotypal-and-delusional-disorders---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: schizophrenia-schizotypal-and-delusional-disorders---secondary/output
  nonorganic-schizophrenia-schizotypal-and-delusional-disorders---secondary:
    run: nonorganic-schizophrenia-schizotypal-and-delusional-disorders---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: schizoaffective-schizophrenia-schizotypal-and-delusional-disorders---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: nonorganic-schizophrenia-schizotypal-and-delusional-disorders---secondary/output
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
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
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

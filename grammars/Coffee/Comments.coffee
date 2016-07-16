# CHANGELOG
# Written by Josh Grooms on 20160404



# COMMENTLINE - Captures any valid single-line comment in Python.
commentLine =
    match: '(?<!\\\\)(\\#)(.*)'
    captures:
        1: name: 'comment.line.open.python'
        2: name: 'comment.line.content.python'
    name: 'comment.line.python'
# COMMENTSECTION - Captures comments that are intended to denote broad sections of code.
commentSection =
    match: /(\#\#)(.*)(\#\#)\r?\n/
    captures:
        1: name: 'comment.section.open.python'
        2: name: 'comment.section.title.python'
        3: name: 'comment.section.close.python'
    name: 'comment.section.python'



## DOCUMENTATION COMMENTS ##
docSyntax =
    match: /^\s*\#\s*SYNTAX/
    name: 'comment.documentation.syntax.python'

docOutput =
    match: /^\s*\#\s*OUTPUT[S]?/
    name: 'comment.documentation.output.python'

docInput =
    match: /^\s*\#\s*INPUT[S]?/
    name: 'comment.documentation.input.python'

docProperties =
    match: /^\s*\#\s*PROPERTY|PROPERTIES/
    name: 'comment.documentation.properties.python'

docContent =
    match: /^\s*\#.*/
    name: 'comment.documentation.content.python'

# DOCUMENTATION - Captures any documentation comments written according to my personal standard.
documentation =
    begin:          "^\\s*(?<![^\\\\]\\\\)(\\'\\'\\')"
    beginCaptures:
        1: name:    'comment.documentation.open.python'
    contentName:    'comment.documentation.content.python'
    end:            "(?<![^\\\\]\\\\)(\\'\\'\\')"
    endCaptures:
        1: name:    'comment.documentation.close.python'
    patterns:
        [
            docSyntax,
            docOutput,
            docInput,
            docProperties,
            docContent
        ]

documentationDouble =
    begin:          '^\\s*(?<![^\\\\]\\\\)(\\"\\"\\")'
    beginCaptures:
        1: name:    'comment.documentation.open.python'
    contentName:    'comment.documentation.content.python'
    end:            '(?<![^\\\\]\\\\)(\\"\\"\\")'
    endCaptures:
        1: name:    'comment.documentation.close.python'
    patterns:
        [
            docSyntax,
            docOutput,
            docInput,
            docProperties,
            docContent
        ]


# Ordering is important here
module.exports =
    [
        commentSection,
        documentation,
        documentationDouble,
        commentLine
    ]

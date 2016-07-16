# CHANGELOG
# Written by Josh Grooms on 20160404



booleans =
    match: /\b(False|True)\b/
    name: 'literal.boolean.python';

numbers =
    match:
        ///\b(
            \d+
            (?: \.\d+ )?
            (?:
                [eE]
                [\+\-]?  \d+
            )?
        )\b///;
    name: 'literal.number.python';

nullValue =
    match: /\b(None)\b/;
    name: 'literal.null.python';



## STRINGS ##
strings =
    begin:              "(?<![^\\\\]\\\\)(r?)(\\')"
    beginCaptures:
        1: name:        'literal.string.qualifier.python'
        2: name:        'enclosure.string.open.python'
    contentName:        'literal.string.content.python'
    end:                "(?<![^\\\\]\\\\)(\\')"
    endCaptures:
        1: name:        'enclosure.string.close.python'

stringsDouble =
    begin:              '(?<![^\\\\]\\\\)(r?)(\\")'
    beginCaptures:
        1: name:        'literal.string.qualifier.python'
        2: name:        'enclosure.string.open.python'
    contentName:        'literal.string.content.python'
    end:                '(?<![^\\\\]\\\\)(\\")'
    endCaptures:
        1: name:        'enclosure.string.close.python'

module.exports =
    [
        booleans,
        numbers,
        nullValue,
        strings,
        stringsDouble
    ];

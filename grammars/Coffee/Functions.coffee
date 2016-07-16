# CHANGELOG
# Written by Josh Grooms on 20160404



functions =
    begin:          /(def)\s+(\w+)\s*(\()/
    beginCaptures:
        1: name:    'keyword.type.function.python'
        2: name:    'function.name.python'
        3: name:    'enclosure.group.open.python'
    end:            /(\))\s*(\:)/
    endCaptures:
        1: name:    'enclosure.group.close.python'
        2: name:    'operator.character.python'

module.exports =
    [
        functions
    ];

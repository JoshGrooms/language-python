# CHANGELOG
# Written by Josh Grooms on 20160404

# OPERATORS - Captures any valid character-based operators in Python.
operators =
    match:
        ///(
            \, |
            \; |
            \? |
            \~ |
            \@ | \@\= |
            \: | \:\: |
            \^ | \^\= |
            \% | \%\= |
            \= | \=\= |
            \! | \!\= |
            \& | \&\= |
            \| | \|\= |
            \+ | \+\= |
            \- | \-\= |
            \/ | \/\= | \/\/ | \/\/\= |
            \* | \*\= | \*\* | \*\*\= |
            \> | \>\= | \>\> | \>\>\= |
            \< | \<\= | \<\< | \<\<\=
        )///
    name: 'operator.character.python';

# ENCLOSURES - Captures any valid enclosure characters in Python.
enclosures =
    [
        {
            match: /\[/;
            name: 'enclosure.index.open.python';
        }
        {
            match: /\]/;
            name: 'enclosure.index.close.python';
        }
        {
            match: /\(/;
            name: 'enclosure.group.open.python';
        }
        {
            match: /\)/;
            name: 'enclosure.group.close.python';
        }
        {
            match: /\{/;
            name: 'enclosure.block.open.python';
        }
        {
            match: /\}/;
            name: 'enclosure.block.close.python';
        }
    ];

module.exports = [ operators, enclosures ];

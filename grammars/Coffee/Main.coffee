# CHANGELOG
# Written by Josh Grooms on 20160404

{ makeGrammar, rule } = require('atom-syntax-tools');

grammar =
    fileTypes:      [ 'py' ];
    name:           'Python';
    scopeName:      'source.python';

    patterns:
        [
            require('./Comments'),
            require('./Keywords'),
            require('./Functions'),
            require('./Literals'),
            require('./Operators'),
        ];


flattenPatterns = ->
    result = [];
    for pattern in grammar.patterns
        if Array.isArray(pattern)
            for subpattern in pattern
                result = result.concat(subpattern);
        else
            result = result.concat(pattern);

    grammar.patterns = result;


flattenPatterns();
makeGrammar(grammar, 'CSON');

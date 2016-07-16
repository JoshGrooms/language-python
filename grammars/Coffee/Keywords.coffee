# CHANGELOG
# Written by Josh Grooms on 20160404


keywordTypes =
    match: /\b(class|def|lambda|self)\b/
    name: 'keyword.type.python'

keywordControls =
    match:
        ///\s*\b(
            assert      |
            break       |
            continue    |
            else        |
            elif        |
            except      |
            finally     |
            for         |
            from        |
            if          |
            pass        |
            raise       |
            return      |
            try         |
            while       |
            with        |
            yield
        )\b///
    name: 'keyword.control.python'

keywordOperators =
    match:
        ///\s*\b(
            and         |
            as          |
            def         |
            del         |
            exec        |
            import      |
            in          |
            is          |
            not         |
            or          |
            print
        )\b///
    name: 'operator.word.python'

keywordQualifiers =
    match:  /\b(global|nonlocal)\b/
    name:   'keyword.qualifier.python'

module.exports =
    [
        keywordControls,
        keywordOperators,
        keywordQualifiers,
        keywordTypes,
    ];

Number or renumber lines.

Usage examples
==============

Number entire file starting with 10

    :%Numbered 10

Number lines in selected range

    :'<,'>Numbered

Given a buffer with the following lines:

    1. First
    2. Second
    3. Third
    4. Fourth
    5. Fifth

After running the command:

    :%Numbered 10

The buffer will look like:

    10. First
    11. Second
    12. Third
    13. Fourth
    14. Fifth

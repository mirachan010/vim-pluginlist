
# Zh Wrap Vim Plugin

Vim doesn't support text wrapping for chinese. `gq` only formats half-chars

So this plugin uses a simple filter to wrap chinese text.

this will translate:

    在本世紀30～40年代，有的人類學者報告，在馬來半島中部的丘陵地帶，居住著一些泰米爾族部落，他們集族而居，與現代文明隔絕，過著原始的農業生活。這種部落有一種獨特的習慣，就是很重視並有意訓練自己作這類清明夢，藉此來充實精神生活。他們經常在早餐聚在一起，先由個人報告自己昨晚的夢，然後由部落中的長者逐一給予分析與指導，告訴作夢者如何去控制與製作自己的夢，例如，如果夢見猛獸襲擊，應當如何在夢中因地制宜地採取措施，爭取勝利。由於部族的每個成員從幼年時起，便被訓練成作清明夢的能手，所以這個部族的人在精神生活上都比較充實與自信。

into this:

	    在本世紀30～40年代，有的人類學者報告，在馬來半島中部的丘陵地帶，居
    住著一些泰米爾族部落，他們集族而居，與現代文明隔絕，過著原始的農業生活。
    這種部落有一種獨特的習慣，就是很重視並有意訓練自己作這類清明夢，藉此來充
    實精神生活。他們經常在早餐聚在一起，先由個人報告自己昨晚的夢，然後由部落
    中的長者逐一給予分析與指導，告訴作夢者如何去控制與製作自己的夢，例如，如
    果夢見猛獸襲擊，應當如何在夢中因地制宜地採取措施，爭取勝利。由於部族的每
    個成員從幼年時起，便被訓練成作清明夢的能手，所以這個部族的人在精神生活上
    都比較充實與自信。

## Install

This requires Lingua::ZH::Wrap CPAN module, you can install this via cpanminus or cpan shell.

    $ sudo cpanm Lingua::ZH::Wrap

or

    $ sudo cpan Lingua::ZH::Wrap

Then

    $ make link

## key mappings and commands:

    vmap zgq
    command Zhwrap


AOJ.vim
=======
* * *

This is Vim Plugin for View and Submit at AOJ(http://judge.u-aizu.ac.jp/onlinejudge/index.jsp).  
Default Interface is Unite.vim.  
This provides Unite-Source(AOJ/ProblemList).

Require
-------
* * *
Unite.vim  
webapi.vim


Command
-------
* * *
**:AOJSubmit**  
    When You open one of problems, It Submits Your source code to AOJ.  
    Then, AOJ.vim will open unite buffer.  
    If You cannot see your ID in it, Please execute redraw command like <C-L> in unite buffer.  

**:AOJSubmitByProblemID**  
    You pass Problem ID as argument.
    Other behaver is same :AOJSubmit

**:AOJViewProblems**  
    It opens Problem List in unite buffer.  

**:AOJViewStaticticsLogs**  
    It opens Submit Statistics List in unite buffer.

Configure
---------
* * *
    let g:aoj#user_id = 'Your ID'
    NeoBundle 'mopp/AOJ.vim'
    NeoBundle 'Shougo/unite.vim'
    NeoBundle 'mattn/webapi-vim'

Images
---------
* * *
![SS](./ss1.png)
![SS](./ss2.png)

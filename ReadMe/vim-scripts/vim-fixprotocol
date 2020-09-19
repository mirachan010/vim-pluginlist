# README #

This plugin intends to break a Fix Message into xml

## Format ##

The fix message should consist in keys and values separated by equals and those pairs separated by a null character

```
#!text
8=FIX.4.19=6135=A49=INVMGR56=BRKR34=152=20000426-12:05:0698=0108=3010=157
```

the output will be something like this

```
#!xml
<FIX>
<BeginString>FIX.4.1</BeginString><BodyLength>61</BodyLength><MsgType>A</MsgType><SenderCompID>INVMGR</SenderCompID><TargetCompID>BRKR</TargetCompID><MsgSeqNum>1</MsgSeqNum><SendingTime>20000426-12:05:06</SendingTime><EncryptMethod>0</EncryptMethod><HeartBtInt>30</HeartBtInt><CheckSum>157</CheckSum>
</FIX>
```

## Protocol ##

When converting from message to xml the plugin tries to translate **FieldNumbers** to 
**FieldName** using some dictionary files, which are located in `autoload` folder.
Those dictionary files were generated using the xml file found at [Quickfix Engine](http://www.quickfixengine.org/)

## Usage ##

Go to a line where existis a Fix Message and type

    :FixToXml

## Configuration ##

### Protocol version ###

The protocol version can be configured by the variable `g:fixprotocol_fixversion` with two possible values

    let g:fixprotocol_fixversion = '42'

or

    let g:fixprotocol_fixversion = '44'

### XML root tag ###

You can define the xml root tag setting the variable `g:fixprotocol_root_tag` to any valid string

    let g:fixprotocol_root_tag = 'FIX'

## How do I get set up? ##

If you don't have a preferred installation method, one option is to install
[pathogen.vim](https://github.com/tpope/vim-pathogen), and then copy
and paste:

    cd ~/.vim/bundle
    git clone https://vappolinario@bitbucket.org/vappolinario/vim-fixprotocol.git

Otherwise you can always download and copy the files to `plugin`, `autoload` and `doc` whitin your vim directory

# TODO #

* Suport for more fix versions
* XML indentation
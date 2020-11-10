
# Open.vim

`open.vim` provides an interface for launching application by
detecting file extensions.

## Install

    make install

## Usage

    cal Open( '/home/c9s/1121.bmp' )
    cal Open( '/home/c9s/test.pdf' )
    cal Open( 'http://google.com/' )
    cal Open( 'https://gmail.com' )
    cal Open( 'http://twitter.com' )

    cal OpenSetPrefer(extensionPattern,app)

    cal OpenRegisterExt(extensionPattern,applist) 

### Author: Cornelius (Yo-An Lin)

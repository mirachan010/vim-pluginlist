
# Features
## Inheritance

    " vice.vim needs to know the SID of where the methods are defined.
    function! s:SID()
        return matchstr(expand('<sfile>'), '<SNR>\zs\d\+\ze_SID$')
    endfunction

    " 'generate_stub' is defaultly 0 for some reasons.
    " you can omit the vice#class()'s 3rd argument
    " if you like default one.
    let s:VICE_OPTIONS = {'generate_stub': 1}


    " Trait

    let s:Printable = vice#trait('Printable', s:SID(), s:VICE_OPTIONS)

    function! {s:Printable.method('print')}(self)
        echon a:self.message()
    endfunction

    function! {s:Printable.method('say')}(self)
        echo a:self.message()
    endfunction

    function! s:Printable.requires()
        return ['message']
    endfunction


    let s:Foo = vice#class('Foo', s:SID(), s:VICE_OPTIONS)
    call s:Foo.with(s:Printable)

    function! {s:Foo.method('message')}(self)
        return 'foo'
    endfunction


    let s:Bar = vice#class('Bar', s:SID(), s:VICE_OPTIONS)
    call s:Bar.with(s:Printable)

    function! {s:Bar.method('message')}(self)
        return 'bar'
    endfunction


    echon "--- Foo ---\n"

    let foo = s:Foo.new()
    " "foo"
    call foo.print()
    " "foo" with newline
    call foo.say()

    echon "\n"
    echon "--- Bar ---\n"

    let bar = s:Bar.new()
    " "bar"
    call bar.print()
    " "bar" with newline
    call bar.say()

## Trait (Perl's role-like feature)
- Trait can *provide* some methods
- Trait can *require* some methods to implement

# TODO

## Type constraints

    let s:class = vice#new('Klass')
    let meta = s:class._meta

    " Create Pair type (local to s:buffer_string object).
    function! meta.subtype('Pair', 'List').where(Value)
        return len(a:Value) == 2
    endfunction

    " Create Pair type (local to s:buffer_string object).
    function! meta.subtype('Pair', 'List').define()
        function self.where(Value)
            return len(a:Value) == 2
        endfunction
    endfunction

- .where()
- when it should be called?
    - How do other languages' system do that?
    * it should be called when assigning a value.

## etc.
- Moose(Perl)'s before(), after()
    - override (or more like Aspect-Oriented?)

vital-Web-API-GitHub
==============================================================================
[![Travis CI](https://img.shields.io/travis/lambdalisue/vital-Web-API-GitHub/master.svg?style=flat-square&label=Travis%20CI)](https://travis-ci.org/lambdalisue/vital-Web-API-GitHub) [![AppVeyor](https://img.shields.io/appveyor/ci/lambdalisue/vital-Web-API-GitHub/master.svg?style=flat-square&label=AppVeyor)](https://ci.appveyor.com/project/lambdalisue/vital-Web-API-GitHub/branch/master) ![Version 0.1.0](https://img.shields.io/badge/version-0.1.0-yellow.svg?style=flat-square) ![Support Vim 7.3 or above](https://img.shields.io/badge/support-Vim%207.3%20or%20above-yellowgreen.svg?style=flat-square) [![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](LICENSE) [![Doc](https://img.shields.io/badge/doc-%3Ah%20vital--Web--API--GitHub-orange.svg?style=flat-square)](doc/vital-web-api-github.txt)


Introductions
-------------------------------------------------------------------------------
This vital module is for helping developers who want to develop plugins which
manipulate with GitHub API.
It provides a basic authentication/authorization procedure and an authorizable
client instance.

This module was developed based on [Documentation of GitHub API v3](https://developer.github.com/v3/)

Install
-------------------------------------------------------------------------------

```vim
NeoBundle 'lambdalisue/vital-Web-API-GitHub'
```

And call the following to bundle this plugin

```vim
:Vitalize . +Web.API.GitHub
```

Usage
-------------------------------------------------------------------------------

Create a client instance with `Vital.Web.API.GitHub.new()`, and then request
the API response with get, post, or whatever provided by the client (Similar API with `Vital.Web.HTTP` module).
The following code get a most recent public gist (only page=1):

```vim
let s:J = s:V.import('Web.JSON')
let s:G = s:V.import('Web.API.GitHub')
let s:client = s:G.new()

" Request 'public' gists as an anonymous user
let response = s:client.get('gists')
let partial_entries = s:J.decode(response.content)

" Request your gists
call s:client.login('your_user_name')
let response = s:client.get('gists')
let partial_entries = s:J.decode(response.content)

" Request 'public' gists as an anonymous user
call s:client.logout()
let response = s:client.get('gists')
let partial_entries = s:J.decode(response.content)
```

If you would like to retrieve all entries of a particular URL, use retrieve()
method like:

```vim
let entries = s:client.retrieve('gists')
```

Note that the retrieve() returns an JSON parsed object while get, post or
other methods return a response object.

License
-------------------------------------------------------------------------------
The MIT License (MIT)

Copyright (c) 2015 Alisue, hashnote.net

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

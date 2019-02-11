<div id="header">

README
======

<div id="toc" class="toc">

<div id="toctitle">

Table of Contents

</div>

-   [Introduction](#_introduction)
-   [Quick Start](#_quick_start)
-   [Configuration](#_configuration)
    -   [Data Store](#_data_store)
    -   [Port Number](#_port_number)

</div>

</div>

<div id="content">

<div class="sect1">

Introduction 
------------

<div class="sectionbody">

<div class="paragraph">

Dockerfile to build a
[simple-autoreload-server](https://www.npmjs.com/package/simple-autoreload-server)

</div>

</div>

</div>

<div class="sect1">

Quick Start
-----------

<div class="sectionbody">

<div class="listingblock">

<div class="content">

``` {.CodeRay .highlight}
docker run --rm -it -v $PWD/data:/data -p 18080:8080 dbgso/autoreloadserver
```

</div>

</div>

<div class="paragraph">

Open `http://localhost:18080` with your browser.\

</div>

</div>

</div>

<div class="sect1">

Configuration {#_configuration}
-------------

<div class="sectionbody">

<div class="paragraph">

You can use Command Line Options for simple-autoreload-server , using
option for docker run.

</div>

<div class="paragraph">

For
[Example1](https://www.npmjs.com/package/simple-autoreload-server#example-1)

</div>

<div class="listingblock">

<div class="content">

``` {.CodeRay .highlight}
docker run --rm -it -v $PWD/data:/data -p 18080:8080 dbgso/simple-autoreload-server -w "**/**.{html,css,js}" ./site-files 8008
```

</div>

</div>

<div class="paragraph">

For details, please refer to the following link.

</div>

<div class="paragraph">

[simple-autoreload-server](https://www.npmjs.com/package/simple-autoreload-server)

</div>

<div class="sect2">

### Data Store 

<div class="paragraph">

This image’s working direcotry is `/data`.\
So you have to mount host directory to `/data` with `VOLUME` option.

</div>

<div class="paragraph">

If you want to mount `./data` directory, set option like this.

</div>

<div class="listingblock">

<div class="content">

``` {.CodeRay .highlight}
-v $PWD/data:/data
```

</div>

</div>

</div>

<div class="sect2">

### Port Number

<div class="paragraph">

This image using `8080` port.

</div>

<div class="paragraph">

If you want to mount port `18080`, set option like this.

</div>

<div class="listingblock">

<div class="content">

``` {.CodeRay .highlight}
 -p 18080:8080
```

</div>

</div>

</div>

</div>

</div>

</div>

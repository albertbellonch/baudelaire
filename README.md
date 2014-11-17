Baudelaire
======

[![Build Status](https://secure.travis-ci.org/albertbellonch/baudelaire.png)](http://travis-ci.org/albertbellonch/baudelaire)

Description
-----------

Baudelaire is a simple gem that adds wraps ActiveRecord getters and
setters for string attributes, so they can be used as symbols.

This gem is named after the beginner of symbolism in literature,
French poet [Charles Baudelaire](http://en.wikipedia.org/wiki/Charles_Baudelaire).

Installation
------------

Simply install the gem:

    gem install baudelaire

Usage
-----

Just use the `symbolize` class method on the model, passing the list of
attributes you want to symbolize.

    class TvShow < ActiveRecord::Base
      ...
      symbolize :kind, :interest_level
      ...
    end

Then you will be able to do something like:

    tv_show = TvShow.new
    tv_show.kind = 'drama'
    tv_show.kind # will return :drama

TODO
----

Do you have something in mind? Issue a PR! Bonus points for testing :)

Changelog
---------

* v.0.1.0 Basic feature: getters and setters for symbolized attributes

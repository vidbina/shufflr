# Shufflr
Ruby already offers a ```#shuffle``` method on ```Array```-type objects, but
a situation may present itself once where one may need to exercise more 
granular control on the way the shuffle is performed or which type of shuffle
is performed.

For now this is just my take on a small assessment, that kinda got out of hand
when I started benchmarking and goofing around :wink:.

## Installation

Add this line to your application's Gemfile:

    gem 'shufflr'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install shufflr

## Usage

Use the shuffler of choice by calling #shuffle.

    require 'shufflr'

    Shufflr::FisherYates.shuffle [1, 2, 3, 4, 5]

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

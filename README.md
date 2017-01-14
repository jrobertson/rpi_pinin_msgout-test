# Introducing the rpi_pinin_msgout-test gem

This gem is designed to make it convenient to evaluate the rpi-pinin-msgout gem without having to set up a push button for example on a Raspberry Pi. Instead, the spacebar key simulates the pressing of a button.

Here's a couple of examples:

    # default mode

    require 'rpi_pinin_msgout-test'

    pin = RPiPinInMsgOutTest.new(4, pull: :up, mode: :default)
    pin.capture

Output:

<pre>
2017-01-14 20:29:36 +0000
2017-01-14 20:29:37 +0000
2017-01-14 20:29:38 +0000
2017-01-14 20:29:38 +0000
2017-01-14 20:29:38 +0000
2017-01-14 20:29:39 +0000
2017-01-14 20:29:39 +0000
</pre>

    # secretkock mode

    require 'rpi_pinin_msgout-test'

    pin = RPiPinInMsgOutTest.new(4, pull: :up, mode: :secretknock)
    pin.capture

Output:

<pre>
2017-01-14 20:30:14 +0000

1 2017-01-14 20:30:14 +0000
2 2017-01-14 20:30:17 +0000: pi/sensor/0: e
                                           2017-01-14 20:30:19 +0000

1 2017-01-14 20:30:19 +0000
2 2017-01-14 20:30:20 +0000
3 2017-01-14 20:30:22 +0000: pi/sensor/0: t
                                           2017-01-14 20:30:27 +0000

1 2017-01-14 20:30:27 +0000

1 2017-01-14 20:30:28 +0000
2 2017-01-14 20:30:28 +0000
3 2017-01-14 20:30:28 +0000
4 2017-01-14 20:30:28 +0000
5 2017-01-14 20:30:29 +0000
6 2017-01-14 20:30:31 +0000: pi/sensor/0: l
</pre>

Notes: 

* The rpi_pinin_msgout gem was design to be used by the humble_rpi-plugin-button gem.
* The default notifier (which outputs the product from 1 or more keypresses) is used although it can be changed.


## Resources

* rpi_pinin_msgout-test https://rubygems.org/gems/rpi_pinin_msgout-test#
* humble_rpi-plugin-button https://rubygems.org/gems/humble_rpi-plugin-button
* Detect a Secret Knock message after a given timeout http://www.jamesrobertson.eu/snippets/2016/jan/19/detect-a-secret-knock-message-after-a-given-timeout.html
rpipininmsgout test gem button press

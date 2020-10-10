LISYNetwork Core integration/staging tree
=====================================

https://lisynetwork.com

What is LISYNetwork?
----------------

LISYNetwork is an experimental digital currency that enables instant payments to
anyone, anywhere in the world. LISYNetwork uses peer-to-peer technology to operate
with no central authority: managing transactions and issuing money are carried
out collectively by the network. LISYNetwork Core is the name of open source
software which enables the use of this currency.

For more information, as well as an immediately useable, binary version of
the LISYNetwork Core software, see https://lisynetwork.com

License
-------

LISYNetwork Core is released under the terms of the MIT license. See [COPYING](COPYING) for more
information or see https://opensource.org/licenses/MIT.

Development Process
-------------------

The `master` branch is regularly built and tested, but is not guaranteed to be
completely stable. [Tags](https://github.com/LISYNetworkProject/LISYNetwork/tags) are created
regularly to indicate new official, stable release versions of LISYNetwork Core.

The contribution workflow is described in [CONTRIBUTING.md](CONTRIBUTING.md).

Developer IRC can be found on Freenode at #lisynetwork-core-dev.

Testing
-------

Testing and code review is the bottleneck for development; we get more pull
requests than we can review and test on short notice. Please be patient and help out by testing
other people's pull requests, and remember this is a security-critical project where any mistake might cost people
lots of money.

Testnet is now up and running and available to use during development. There is an issue when connecting to the testnet that requires the use of the -maxtipage parameter in order to connect to the test network initially. After the initial launch the -maxtipage parameter is not required.

Use this command to initially start lisynetworkd on the testnet. <code>./lisynetworkd -testnet -maxtipage=259200</code>

### Automated Testing

Developers are strongly encouraged to write [unit tests](src/test/README.md) for new code, and to
submit new unit tests for old code. Unit tests can be compiled and run
(assuming they weren't disabled in configure) with: `make check`. Further details on running
and extending unit tests can be found in [/src/test/README.md](/src/test/README.md).

There are also [regression and integration tests](/test), written
in Python, that are run automatically on the build server.
These tests can be run (if the [test dependencies](/test) are installed) with: `test/functional/test_runner.py`


### Manual Quality Assurance (QA) Testing

Changes should be tested by somebody other than the developer who wrote the
code. This is especially important for large or high-risk changes. It is useful
to add a test plan to the pull request description if testing the changes is
not straightforward.


About LISYNetwork
----------------
A digital peer to peer network for the facilitation of asset transfer.



In the fictional world of Westeros, lisynetworks are used as messengers who carry statements of truth. LISYNetwork is a use case specific blockchain designed to carry statements of truth about who owns what assets. 



Thank you to the Bitcoin developers. 

The LISYNetwork project is launched based on the hard work and continuous effort of over 400 Bitcoin developers who made over 14,000 commits over the life to date of the Bitcoin project. We are eternally grateful to you for your efforts and diligence in making a secure network and for their support of free and open source software development.  The LISYNetwork experiment is made on the foundation you built.

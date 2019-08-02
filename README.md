# General Information

## Maintainer
Oliver Bründler [oliver.bruendler@psi.ch]

## License
This library is published under [PSI HDL Library License](License.txt), which is [LGPL](LGPL2_1.txt) plus some additional exceptions to clarify the LGPL terms in the context of firmware development.

## Changelog
See [Changelog](Changelog.md)

## Detailed Documentation
The main documentation is in the [psi\_multi\_stream\_daq](https://github.com/paulscherrerinstitute/psi_multi_stream_daq) repo. The logic is implemented in this general VHDL repository because the IP-Core is used not only.

[Documentation](https://github.com/paulscherrerinstitute/psi_multi_stream_daq/blob/master/doc/psi_multi_stream_daq.pdf)

[Reference Design User Guide](./doc/ReferenceDesignUserGuide.pdf)

## Tagging Policy
Stable releases are tagged in the form *major*.*minor*.*bugfix*. 

* Whenever a change is not fully backward compatible, the *major* version number is incremented
* Whenever new features are added, the *minor* version number is incremented
* If only bugs are fixed (i.e. no functional changes are applied), the *bugfix* version is incremented

<!-- DO NOT CHANGE FORMAT: this section is parsed to resolve dependencies -->

## Dependencies

* TCL
  * [PsiSim](https://github.com/paulscherrerinstitute/PsiSim) (2.1.0 or higher, for development only)
  * [PsiIpPackage](https://github.com/paulscherrerinstitute/PsiIpPackage) (2.0.0, for development only)
* VHDL
  * [psi\_common](https://github.com/paulscherrerinstitute/psi_common) (2.5.0 or higher)
  * [psi\_tb](https://github.com/paulscherrerinstitute/psi_tb) (2.2.2 or higher, for development only)
  * [psi\_multi\_stream\_daq](https://github.com/paulscherrerinstitute/psi_multi_stream_daq) (1.2.0 or higher)
* VivadoIp
  * [vivadoIP\_axis\_data\_gen](https://github.com/paulscherrerinstitute/vivadoIP_axis_data_gen) (1.2.0, for reference design only)
  * [**vivadoIP\_psi\_ms\_daq**](https://github.com/paulscherrerinstitute/vivadoIP_psi_ms_daq)
  
<!-- END OF PARSED SECTION -->
  
Dependencies can also be checked out using the python script *scripts/dependencies.py*. For details, refer to the help of the script:

```
python dependencies.py -help
```

Note that the [dependencies package](https://github.com/paulscherrerinstitute/PsiFpgaLibDependencies) must be installed in order to run the script.

# Description
This IP-core implements generic multi-stream data acquisition engine that writes data directly into a memory connected via AXI (e.g. a DDR memory).

Main features are:
* Up to 16 Streams with different widths
* Record data for up to 32 triggers before the software has to read data
* Linear- and Ring-Buffer mode
* High-bandwidth (64-bit internal datapath -> 2 GB/sec @ 250 MHz)
* A reference design is provided

## Important Note
This repository only contains a wrapper to the VHDL implementation of the functionality in [psi\_multi\_stream\_daq](https://github.com/paulscherrerinstitute/psi_multi_stream_daq). So any change of functionality must be implemented there.
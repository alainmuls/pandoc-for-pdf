
# Experiment basic information

- __Operators__
    + Pascal De Kimpe
    + Avag Tsaturyan
- __Location / Date__
    + RMA LAB  H local 50/14
    + 14 December 2020
- __Short description of Experiment__
    + Set-up
        * RFI jamming on GAL E1 PRS code with 64QAM & CST signals  wide bandwidth
        * preservation of Galileo E6 PRS
        * Jammer is VST generator from M3systems and Recorder with Stella Software
        * Laboratory setup using Directionnal coupleur and Splitter Amplifier

    + Receivers used
        * AsteRx SB
        * TURP
        * P3RS2
- __Log files__

\small

|    __Rx__   |                   __Files__                    |
| :---------- | :--------------------------------------------- |
|  AsteRX_SB  |        H50_14DEC14JammingQAM64_0000.sbf        |
|     TURP    |             BEGP349(K,L,O).20_.sbf             |
|    P3RS2    |     P3RS-2_RX_R_20203491039_15M_00U_MO.rnx     |
|             |     P3RS-2_RX_R_20203491054_15M_00U_MO.rnx     |
|             |     P3RS-2_RX_R_20203491409_15M_00U_MO.rnx     |
|             |     P3RS-2_RX_R_20203491424_15M_00U_MO.rnx     |

\normalfont
\clearpage
# Experiment set-up


\small

Table: Set-up of OS RFI jamming 

| __Parameter__                         | __Value__                                    |
| :----------------------------------   | :--------------------------------------      |
| - targeted navigation signal          | - PRS E1A                                    |
|                                       | - GPS C/A @ L1                               |
|                                       | - Galileo OS E1BC                            |
| - targeted frequency                  | L1/E1 @ 1575.42 MHz                          |
| - targeted bandwidth                  | 40 MHz                                       |
| - power of targeted signal(s)         | $\pm$ (-127) dBm                             |
|                                       |                                              |
| __Preserved navigation service__      |                                              |
| - preserved navigation service        | - Galileo PRS (single or dual band)          |
| - preserved navigation signals        | - PRS E6A                                    |
|                                       |                                              |
| __Receivers__                         | TUR-P, P3RS2, AsteRx_SB                      |
| - start status                        | Warm using live signals (PNT & Ephemeris ok) |
| - logging frequency                   | 1 Hz                                         |
| - troposphere model                   | Saastamoinen                                 |
| - ionosphere model                    | Klobuchar                                    |
|                                       |                                              |
| __Jamming scenario__                  |                                              |
| - jamming signal                      | CST @ L1 sweep time $\pm 100$µs       |
|                                       | BW 40 MHz, increase power                    |
| - interference power                  | [-100 : 3 : -77 : 2 : - 59 : 1 : -40] dBm    |
| - interference timing                 | [ 20 : 10 : 10]                              |
| - RFI Start Time                      | 14:10:01                                     |
| - RFI Scenario file                   | CST-jamming.csv                              |
|                                       |                                              |
| __Location__                          |                                              |
| - RMA Antenna                         | 50.8440152778N / 4.3929283333E / 151.39179   |
|                                       |                                              |
| __Metrics__                           |                                              |
| - Carrier-to-Noise                    | L1-C/A, Gal OS, Gal PRS E1 / E6              |
| - number of satellites                | in PNT fix                                   |
| - loss of (first) satellites          | time & duration                              |
| - loss of PNT                         | time & duration                              |
| - reacquisition of (first) satellites | time & duration                              |
| - reacquisition of  PNT               | time & duration                              |
| - AGC (automatic gain control)        | if available                                 |
| - PNT accuracy                        | log vs time                                  |
| - recovery time or `SINR` level       | time needed during or after scenario         |


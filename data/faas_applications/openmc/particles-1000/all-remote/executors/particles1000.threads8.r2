[03:09:51:385266] [T 708266] [info] Executing serverless-rdma executor with 1 cores! Waiting for client at 148.187.105.52:10005 
[03:09:51:386837] [T 708266] [info] Configuration options: expecting function size 3291512, function payloads 3410000, receive WCs buffer size 32, max inline data 0, hot polling timeout 0 
[03:09:51:386842] [T 708266] [info] My manager runs at 148.187.105.51:10000, its secret is 4660, the accounting buffer is at 140737354063872 with rkey 135424 
[03:09:51:408396] [T 708267] [info] Thread 0 Established connection to the manager! 
[03:09:51:413090] [T 708267] [info] Thread 0 Established connection to client! 
[03:09:51:423400] [T 708267] [info] Thread 0 begins work with timeout 0 
                                %%%%%%%%%%%%%%%
                           %%%%%%%%%%%%%%%%%%%%%%%%
                        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                      %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                    %%%%%%%%%%%%%%%%%%%%%%%%
                                     %%%%%%%%%%%%%%%%%%%%%%%%
                 ###############      %%%%%%%%%%%%%%%%%%%%%%%%
                ##################     %%%%%%%%%%%%%%%%%%%%%%%
                ###################     %%%%%%%%%%%%%%%%%%%%%%%
                ####################     %%%%%%%%%%%%%%%%%%%%%%
                #####################     %%%%%%%%%%%%%%%%%%%%%
                ######################     %%%%%%%%%%%%%%%%%%%%
                #######################     %%%%%%%%%%%%%%%%%%
                 #######################     %%%%%%%%%%%%%%%%%
                 ######################     %%%%%%%%%%%%%%%%%
                  ####################     %%%%%%%%%%%%%%%%%
                    #################     %%%%%%%%%%%%%%%%%
                     ###############     %%%%%%%%%%%%%%%%
                       ############     %%%%%%%%%%%%%%%
                          ########     %%%%%%%%%%%%%%
                                      %%%%%%%%%%%

                 | The OpenMC Monte Carlo Code
       Copyright | 2011-2023 MIT, UChicago Argonne LLC, and contributors
         License | https://docs.openmc.org/en/latest/license.html
         Version | 0.13.3-dev
        Git SHA1 | ee714c8bb8e21423460d8153c861c4fb8ec6e925
       Date/Time | 2023-04-07 03:09:51
  OpenMP Threads | 256

 Reading settings XML file...
 Reading cross sections XML file...
 Reading materials XML file...
 Reading geometry XML file...
 Reading H1 from
 /users/lschmid/sw-disagg/openmc-data/endfb-viii.0-hdf5/neutron/H1.h5
 Reading O16 from
 /users/lschmid/sw-disagg/openmc-data/endfb-viii.0-hdf5/neutron/O16.h5
 Reading B10 from
 /users/lschmid/sw-disagg/openmc-data/endfb-viii.0-hdf5/neutron/B10.h5
 Reading B11 from
 /users/lschmid/sw-disagg/openmc-data/endfb-viii.0-hdf5/neutron/B11.h5
 Reading U235 from
 /users/lschmid/sw-disagg/openmc-data/endfb-viii.0-hdf5/neutron/U235.h5
 Reading U238 from
 /users/lschmid/sw-disagg/openmc-data/endfb-viii.0-hdf5/neutron/U238.h5
 Reading Gd152 from
 /users/lschmid/sw-disagg/openmc-data/endfb-viii.0-hdf5/neutron/Gd152.h5
 Reading Gd154 from
 /users/lschmid/sw-disagg/openmc-data/endfb-viii.0-hdf5/neutron/Gd154.h5
 Reading Gd155 from
 /users/lschmid/sw-disagg/openmc-data/endfb-viii.0-hdf5/neutron/Gd155.h5
 Reading Gd156 from
 /users/lschmid/sw-disagg/openmc-data/endfb-viii.0-hdf5/neutron/Gd156.h5
 Reading Gd157 from
 /users/lschmid/sw-disagg/openmc-data/endfb-viii.0-hdf5/neutron/Gd157.h5
 Reading Gd158 from
 /users/lschmid/sw-disagg/openmc-data/endfb-viii.0-hdf5/neutron/Gd158.h5
 Reading Gd160 from
 /users/lschmid/sw-disagg/openmc-data/endfb-viii.0-hdf5/neutron/Gd160.h5
 Reading Zr90 from
 /users/lschmid/sw-disagg/openmc-data/endfb-viii.0-hdf5/neutron/Zr90.h5
 Reading Zr91 from
 /users/lschmid/sw-disagg/openmc-data/endfb-viii.0-hdf5/neutron/Zr91.h5
 Reading Zr92 from
 /users/lschmid/sw-disagg/openmc-data/endfb-viii.0-hdf5/neutron/Zr92.h5
 Reading Zr94 from
 /users/lschmid/sw-disagg/openmc-data/endfb-viii.0-hdf5/neutron/Zr94.h5
 Reading Zr96 from
 /users/lschmid/sw-disagg/openmc-data/endfb-viii.0-hdf5/neutron/Zr96.h5
 WARNING: Negative value(s) found on probability table for nuclide Zr96 at 294K
 Reading c_H_in_H2O from
 /users/lschmid/sw-disagg/openmc-data/endfb-viii.0-hdf5/neutron/c_H_in_H2O.h5
 Minimum neutron data temperature: 294 K
 Maximum neutron data temperature: 294 K
 Preparing distributed cell instances...
 Reading plot XML file...
 Writing summary.h5 file...
 Maximum neutron transport energy: 20000000 eV for H1
 Initializing source particles...

 ====================>     K EIGENVALUE SIMULATION     <====================

  Bat./Gen.      k       Entropy         Average k 
  =========   ========   ========   ====================
0.018122 0.018044 
0.013845 0.013749 
0.011946 0.011877 
 WARNING: Particle 996 had a negative distance to a lattice boundary
 WARNING: Particle 997 had a negative distance to a lattice boundary
0.018752 0.018673 
0.011562 0.011492 
0.011994 0.011919 
 WARNING: Particle 999 had a negative distance to a lattice boundary
0.014978 0.014913 
0.011884 0.011808 
0.011751 0.011671 
0.013620 0.013545 
0.012094 0.012019 
0.011832 0.011758 
0.011998 0.011920 
0.011757 0.011671 
0.012050 0.011964 
0.011712 0.011658 
0.011842 0.011789 
0.011025 0.010974 
0.011604 0.011550 
0.011719 0.011667 
0.011429 0.011377 
0.011246 0.011196 
0.011532 0.011480 
0.011511 0.011458 
0.011708 0.011656 
0.011733 0.011663 
0.011788 0.011733 
0.011356 0.011306 
0.011364 0.011311 
0.011666 0.011614 
0.011598 0.011547 
0.011789 0.011737 
0.011610 0.011560 
0.011623 0.011567 
0.011185 0.011132 
0.011419 0.011367 
0.011348 0.011297 
0.011439 0.011390 
0.011259 0.011207 
0.011209 0.011159 
0.011400 0.011350 
0.015105 0.015051 
0.012968 0.012915 
0.012470 0.012418 
0.012285 0.012234 
0.012475 0.012423 
0.011833 0.011780 
0.011858 0.011809 
0.013183 0.013132 
0.012765 0.012714 
0.012445 0.012394 
0.012222 0.012172 
0.012432 0.012379 
0.012206 0.012156 
0.011762 0.011712 
0.011721 0.011668 
0.011933 0.011879 
0.011823 0.011759 
0.011666 0.011615 
0.011731 0.011681 
0.011427 0.011354 
0.012084 0.012010 
0.012317 0.012248 
0.011785 0.011711 
0.011520 0.011443 
0.011720 0.011648 
0.011831 0.011744 
0.011785 0.011717 
0.011714 0.011639 
0.011455 0.011378 
0.011876 0.011795 
0.012012 0.011936 
0.012126 0.012041 
0.011698 0.011610 
0.011722 0.011646 
0.011548 0.011472 
0.011703 0.011629 
0.011668 0.011586 
0.012182 0.012094 
0.011946 0.011871 
0.012160 0.012073 
0.011237 0.011164 
0.011908 0.011827 
0.012024 0.011953 
0.011622 0.011535 
0.011714 0.011638 
0.012250 0.012179 
0.011713 0.011642 
0.011299 0.011222 
0.011884 0.011799 
0.011780 0.011704 
0.012040 0.011965 
0.011611 0.011528 
0.011622 0.011552 
0.011810 0.011731 
0.012094 0.012012 
0.012259 0.012187 
0.012578 0.012506 
0.011930 0.011858 
0.012323 0.012243 
0.011221 0.011145 
0.011655 0.011565 
0.012066 0.011993 
0.011413 0.011337 
0.012230 0.012152 
0.011652 0.011574 
0.011441 0.011352 
0.011919 0.011846 
0.011585 0.011517 
0.012513 0.012441 
0.011814 0.011744 
0.011525 0.011437 
0.012115 0.012040 
0.011770 0.011683 
0.011861 0.011783 
0.011528 0.011451 
0.012103 0.012029 
0.011821 0.011735 
0.012183 0.012104 
0.012212 0.012135 
0.011752 0.011668 
0.011637 0.011551 
0.011391 0.011305 
0.011370 0.011306 
0.011596 0.011523 
0.011216 0.011129 
0.011574 0.011488 
0.011850 0.011775 
0.011962 0.011888 
0.011652 0.011572 
0.011656 0.011579 
0.011533 0.011450 
0.011415 0.011325 
0.011649 0.011571 
0.012102 0.012026 
0.011332 0.011260 
0.011767 0.011682 
0.011559 0.011486 
0.011403 0.011325 
0.011624 0.011534 
0.011999 0.011925 
0.011153 0.011080 
0.011932 0.011845 
0.011313 0.011236 
0.011607 0.011532 
0.011358 0.011283 
0.011288 0.011211 
0.011468 0.011384 
0.011799 0.011711 
0.012601 0.012526 
0.012435 0.012363 
0.011692 0.011620 
0.011972 0.011897 
0.011342 0.011266 
0.011872 0.011783 
0.011956 0.011877 
0.011616 0.011539 
0.011724 0.011643 
0.011502 0.011427 
0.012321 0.012237 
0.012671 0.012588 
0.011847 0.011775 
0.011845 0.011768 
0.011948 0.011876 
0.011970 0.011888 
0.011645 0.011556 
0.011815 0.011738 
0.011571 0.011498 
0.011380 0.011299 
0.011983 0.011908 
0.011985 0.011905 
0.011939 0.011871 
0.011764 0.011688 
0.011650 0.011562 
0.011913 0.011837 
0.011970 0.011874 
0.012150 0.012077 
0.011980 0.011892 
0.011049 0.010960 
0.012034 0.011964 
0.011810 0.011723 
0.011361 0.011288 
0.011823 0.011746 
0.011961 0.011886 
0.011858 0.011777 
0.012175 0.012101 
0.011934 0.011856 
0.011775 0.011691 
0.011715 0.011631 
0.011710 0.011635 
0.011871 0.011793 
0.012152 0.012065 
0.011767 0.011690 
0.011536 0.011451 
0.011309 0.011230 
0.011835 0.011762 
0.011921 0.011852 
0.011617 0.011544 
0.011655 0.011577 
0.012308 0.012219 
0.011624 0.011546 
0.011703 0.011628 
0.011815 0.011735 
0.011650 0.011566 
0.014426 0.014352 
0.013075 0.012989 
0.013489 0.013411 
0.013267 0.013185 
0.013462 0.013388 
0.013189 0.013111 
0.013302 0.013212 
0.013055 0.012983 
0.012326 0.012236 
0.011885 0.011807 
0.012779 0.012707 
0.012086 0.012011 
0.012692 0.012615 
0.012734 0.012661 
0.012921 0.012843 
0.012593 0.012508 
0.012048 0.011976 
0.012423 0.012344 
0.012594 0.012511 
0.012888 0.012803 
0.012317 0.012240 
0.012392 0.012316 
0.012001 0.011914 
0.012254 0.012161 
0.012345 0.012256 
0.012693 0.012617 
0.012520 0.012447 
0.012631 0.012553 
0.012963 0.012888 
0.013540 0.013462 
0.012496 0.012425 
0.012496 0.012428 
0.012000 0.011928 
0.011609 0.011529 
0.012595 0.012521 
0.012047 0.011962 
0.012650 0.012574 
0.013033 0.012942 
0.012982 0.012907 
0.012354 0.012275 
0.012642 0.012568 
0.012832 0.012759 
0.012712 0.012635 
0.012385 0.012307 
0.012444 0.012358 
0.011885 0.011807 
0.012372 0.012284 
0.012297 0.012220 
0.013334 0.013262 
0.012287 0.012213 
0.012153 0.012068 
0.013234 0.013159 
0.012337 0.012258 
0.013039 0.012964 
0.011976 0.011891 
0.012262 0.012179 
0.012273 0.012189 
0.011938 0.011869 
0.012550 0.012469 
0.012340 0.012257 
0.013185 0.013110 
0.012560 0.012487 
0.012883 0.012803 
0.012547 0.012474 
0.012839 0.012763 
0.012107 0.012031 
0.012667 0.012588 
0.013354 0.013280 
0.013025 0.012932 
0.012178 0.012109 
0.012528 0.012446 
0.012316 0.012229 
0.013194 0.013121 
0.012817 0.012735 
0.012941 0.012862 
0.012014 0.011943 
0.011740 0.011664 
0.011854 0.011778 
0.012503 0.012424 
0.012224 0.012157 
0.012470 0.012396 
0.013111 0.013038 
0.012434 0.012355 
0.012909 0.012825 
0.012304 0.012228 
0.012435 0.012362 
0.012711 0.012639 
0.012219 0.012153 
0.012813 0.012738 
0.012956 0.012891 
0.012204 0.012151 
0.012437 0.012386 
0.012384 0.012333 
0.012311 0.012259 
0.012428 0.012376 
0.012047 0.011995 
0.013543 0.013490 
0.011795 0.011742 
0.013200 0.013145 
0.012083 0.012030 
0.012511 0.012460 
0.011858 0.011805 
0.012227 0.012175 
0.012498 0.012447 
0.011884 0.011831 
0.012465 0.012414 
0.012134 0.012081 
0.012297 0.012244 
0.012117 0.012064 
0.012304 0.012251 
0.012885 0.012833 
0.012335 0.012284 
0.012370 0.012318 
0.012976 0.012922 
0.013007 0.012953 
0.011848 0.011797 
0.012710 0.012657 
0.012949 0.012896 
0.011840 0.011767 
0.012751 0.012698 
0.012971 0.012917 
0.013159 0.013084 
0.011950 0.011898 
0.012453 0.012400 
0.012695 0.012638 
0.011660 0.011607 
0.011834 0.011773 
0.012347 0.012293 
0.012188 0.012133 
0.013331 0.013266 
0.013386 0.013335 
0.012910 0.012857 
0.012668 0.012617 
0.011988 0.011938 
0.012125 0.012072 
0.012289 0.012237 
0.012192 0.012141 
0.012425 0.012373 
0.013336 0.013284 
0.012526 0.012474 
0.012745 0.012676 
0.012346 0.012292 
0.012141 0.012089 
0.012366 0.012314 
0.012328 0.012275 
0.012858 0.012807 
0.012330 0.012272 
0.012516 0.012466 
0.013266 0.013213 
0.013005 0.012953 
0.012218 0.012164 
0.013077 0.013024 
0.012348 0.012298 
0.012660 0.012610 
0.012674 0.012623 
0.012607 0.012553 
0.012906 0.012854 
0.011775 0.011723 
0.012639 0.012588 
0.011976 0.011923 
0.012261 0.012189 
0.012204 0.012151 
0.012490 0.012438 
0.012937 0.012884 
0.015126 0.015073 
0.013200 0.013148 
0.012474 0.012422 
0.012439 0.012386 
0.012154 0.012076 
0.012575 0.012497 
0.012560 0.012483 
0.012211 0.012134 
0.012755 0.012677 
0.012594 0.012516 
0.012650 0.012562 
0.013077 0.013007 
0.012163 0.012079 
0.012840 0.012766 
0.012434 0.012359 
0.012501 0.012428 
0.012373 0.012294 
0.012416 0.012356 
0.012159 0.012107 
0.012732 0.012681 
0.012559 0.012508 
0.011599 0.011549 
0.012308 0.012256 
0.012243 0.012190 
0.012491 0.012416 
0.012094 0.012038 
0.012750 0.012697 
0.012089 0.012036 
0.012299 0.012245 
0.012137 0.012086 
0.011855 0.011799 
0.011979 0.011928 
0.012457 0.012405 
0.012814 0.012759 
0.013358 0.013294 
0.012521 0.012470 
0.012740 0.012687 
0.013118 0.013066 
0.012698 0.012646 
0.012475 0.012424 
0.012450 0.012398 
0.012877 0.012824 
0.012353 0.012300 
0.012684 0.012632 
0.012399 0.012320 
0.013103 0.013025 
0.012424 0.012368 
0.012348 0.012295 
0.012763 0.012710 
0.012509 0.012449 
0.012705 0.012639 
0.012207 0.012155 
0.012508 0.012456 
0.012227 0.012174 
0.012628 0.012569 
0.013331 0.013277 
0.011920 0.011867 
0.012784 0.012733 
0.012732 0.012679 
0.012798 0.012747 
0.013225 0.013174 
0.012907 0.012857 
0.012558 0.012505 
0.012948 0.012875 
0.012715 0.012663 
0.012425 0.012374 
0.012666 0.012610 
0.011995 0.011939 
0.011873 0.011820 
0.013179 0.013124 
0.012066 0.012013 
0.013157 0.013104 
0.012881 0.012828 
0.012339 0.012288 
0.012222 0.012170 
0.012689 0.012623 
0.012950 0.012898 
0.013824 0.013770 
0.012284 0.012231 
0.012386 0.012335 
0.012992 0.012942 
0.012121 0.012068 
0.012580 0.012529 
0.013628 0.013576 
0.012805 0.012752 
0.012212 0.012160 
0.013433 0.013379 
0.012024 0.011971 
0.013051 0.012998 
0.012042 0.011990 
0.012378 0.012319 
0.012287 0.012215 
0.012800 0.012717 
0.013243 0.013157 
0.013688 0.013607 
0.012772 0.012690 
0.012428 0.012343 
0.012547 0.012474 
0.012531 0.012447 
0.013271 0.013196 
0.012445 0.012372 
0.012787 0.012702 
0.011774 0.011701 
0.012894 0.012813 
0.013494 0.013422 
0.012835 0.012760 
0.012342 0.012262 
0.012790 0.012712 
0.012695 0.012619 
0.012260 0.012173 
0.012633 0.012561 
0.012071 0.011996 
0.012818 0.012732 
0.012911 0.012832 
0.012767 0.012691 
0.012501 0.012414 
0.013007 0.012921 
0.012912 0.012822 
0.012874 0.012786 
0.012293 0.012200 
0.012396 0.012323 
0.012652 0.012565 
0.012283 0.012208 
0.012854 0.012780 
0.012532 0.012457 
0.012236 0.012165 
0.012343 0.012263 
0.012750 0.012660 
0.012903 0.012828 
0.012465 0.012377 
0.012997 0.012904 
0.012461 0.012387 
0.012699 0.012621 
0.012932 0.012859 
0.012381 0.012307 
0.012800 0.012728 
0.012404 0.012322 
0.011996 0.011919 
0.012772 0.012693 
0.013328 0.013253 
0.013008 0.012930 
0.013293 0.013217 
0.013302 0.013224 
0.012502 0.012425 
0.012593 0.012512 
0.012576 0.012498 
0.012682 0.012595 
0.012074 0.011997 
0.012729 0.012651 
0.012491 0.012407 
0.012093 0.012014 
0.013182 0.013099 
0.013081 0.013005 
0.012246 0.012160 
0.011953 0.011870 
0.011987 0.011902 
0.012860 0.012784 
0.011955 0.011878 
0.012391 0.012321 
0.012528 0.012454 
0.012493 0.012420 
0.013045 0.012957 
0.013274 0.013195 
0.012518 0.012433 
0.012567 0.012495 
0.012194 0.012114 
0.012456 0.012382 
0.012297 0.012221 
0.012619 0.012541 
0.012536 0.012452 
0.013411 0.013335 
0.012890 0.012801 
0.012573 0.012495 
0.012264 0.012178 
0.013529 0.013441 
0.011902 0.011821 
0.012412 0.012338 
0.013316 0.013238 
0.012799 0.012725 
0.012103 0.012020 
0.012027 0.011945 
0.013174 0.013096 
0.012820 0.012742 
0.011592 0.011516 
0.012444 0.012364 
0.011707 0.011633 
0.013272 0.013198 
0.012895 0.012817 
0.012117 0.012039 
0.012710 0.012633 
0.012822 0.012747 
0.012917 0.012838 
0.012355 0.012280 
0.012885 0.012810 
0.012434 0.012354 
0.012532 0.012454 
0.012081 0.011997 
0.012387 0.012306 
0.013295 0.013221 
0.012821 0.012741 
0.012281 0.012207 
0.012637 0.012547 
0.012501 0.012419 
0.012088 0.012007 
0.013045 0.012966 
0.012281 0.012203 
0.012862 0.012783 
0.013145 0.013072 
0.012099 0.012023 
0.011914 0.011831 
0.011827 0.011744 
0.013354 0.013279 
0.012616 0.012537 
0.011969 0.011892 
0.012501 0.012420 
0.012244 0.012172 
0.012621 0.012545 
0.012756 0.012677 
0.013838 0.013764 
0.012660 0.012573 
0.012876 0.012801 
0.012930 0.012853 
0.012365 0.012288 
0.012644 0.012560 
0.012661 0.012587 
0.012078 0.011997 
0.012071 0.011995 
0.012938 0.012861 
0.012709 0.012633 
0.011979 0.011907 
0.012222 0.012132 
0.012302 0.012222 
0.012289 0.012197 
0.013554 0.013480 
0.012197 0.012115 
0.012510 0.012436 
0.012563 0.012482 
0.012825 0.012743 
0.012499 0.012416 
0.013610 0.013532 
0.013255 0.013177 
0.012286 0.012207 
0.012500 0.012420 
0.012339 0.012251 
0.011627 0.011555 
0.011570 0.011484 
0.012219 0.012130 
0.012493 0.012409 
0.011926 0.011853 
0.012753 0.012687 
0.012243 0.012170 
0.012629 0.012544 
0.012329 0.012242 
0.012139 0.012063 
0.012630 0.012543 
0.012435 0.012349 
0.012526 0.012438 
0.012578 0.012500 
0.012486 0.012407 
0.012664 0.012588 
0.012679 0.012600 
0.012798 0.012720 
0.012077 0.012002 
0.013209 0.013132 
0.011772 0.011688 
0.013503 0.013418 
0.012125 0.012052 
0.012668 0.012592 
0.012029 0.011952 
0.012287 0.012213 
0.013622 0.013539 
0.012814 0.012738 
0.012514 0.012428 
0.013191 0.013113 
0.012496 0.012423 
0.012532 0.012445 
0.011967 0.011891 
0.012699 0.012621 
0.012931 0.012844 
0.012929 0.012856 
0.013621 0.013537 
0.012698 0.012610 
0.012074 0.012003 
0.013021 0.012935 
0.012194 0.012115 
0.012528 0.012451 
0.012720 0.012645 
0.012233 0.012158 
0.012966 0.012883 
0.012288 0.012206 
0.013386 0.013310 
0.013158 0.013086 
0.012702 0.012620 
0.013295 0.013220 
0.012948 0.012859 
0.012554 0.012468 
0.012937 0.012862 
0.012176 0.012101 
0.012942 0.012865 
0.013223 0.013134 
0.012574 0.012485 
0.012965 0.012884 
0.012561 0.012484 
0.011954 0.011878 
0.012125 0.012052 
0.012356 0.012271 
0.012767 0.012676 
0.012424 0.012353 
0.012117 0.012035 
0.012492 0.012420 
0.013132 0.013057 
0.012970 0.012896 
0.012750 0.012672 
0.012644 0.012555 
0.012088 0.012016 
0.012314 0.012244 
0.012197 0.012123 
0.012008 0.011931 
0.012317 0.012239 
0.012541 0.012468 
0.012286 0.012205 
0.013209 0.013119 
0.012727 0.012648 
0.012468 0.012385 
0.012696 0.012619 
0.012801 0.012725 
0.012602 0.012521 
0.012601 0.012526 
0.012933 0.012854 
0.012106 0.012031 
0.012495 0.012425 
0.012064 0.011991 
0.011781 0.011692 
0.012670 0.012587 
0.012990 0.012917 
0.012780 0.012693 
0.012106 0.012027 
0.012712 0.012629 
0.012662 0.012588 
0.012795 0.012719 
0.012146 0.012071 
0.013532 0.013442 
0.012638 0.012560 
0.012274 0.012200 
0.012212 0.012126 
0.012534 0.012459 
0.012666 0.012588 
0.012334 0.012245 
0.012008 0.011930 
0.012396 0.012310 
0.012375 0.012297 
0.012718 0.012643 
0.011927 0.011849 
0.012637 0.012563 
0.012522 0.012441 
0.012777 0.012697 
0.012807 0.012729 
0.013630 0.013550 
0.013279 0.013194 
0.013099 0.013010 
0.013170 0.013095 
0.012307 0.012223 
0.011733 0.011653 
0.012784 0.012711 
0.012300 0.012217 
0.013245 0.013169 
0.012569 0.012498 
0.012459 0.012382 
0.011927 0.011853 
0.012339 0.012265 
0.013446 0.013373 
0.012353 0.012273 
0.012638 0.012550 
0.012625 0.012540 
0.012996 0.012921 
0.012619 0.012543 
0.012265 0.012180 
0.012507 0.012422 
0.012202 0.012130 
0.012229 0.012155 
0.012575 0.012499 
0.013026 0.012935 
0.012395 0.012309 
0.012252 0.012177 
0.012526 0.012447 
0.014796 0.014711 
0.013879 0.013801 
0.013145 0.013068 
0.013047 0.012965 
0.012792 0.012698 
0.013019 0.012941 
0.013655 0.013568 
0.012337 0.012261 
0.012756 0.012668 
0.012998 0.012921 
0.013870 0.013793 
0.012080 0.012005 
0.012783 0.012699 
0.013091 0.013014 
0.012348 0.012286 
0.013496 0.013443 
0.013105 0.013052 
0.012390 0.012339 
0.012106 0.012052 
0.012569 0.012516 
0.012788 0.012735 
0.012710 0.012657 
0.012358 0.012305 
0.011603 0.011550 
0.012493 0.012442 
0.012520 0.012468 
0.012894 0.012842 
0.012523 0.012469 
0.012311 0.012257 
0.012320 0.012266 
0.012682 0.012629 
0.012744 0.012689 
0.012975 0.012923 
0.012626 0.012572 
0.012873 0.012819 
0.013680 0.013629 
0.013523 0.013472 
0.012868 0.012816 
0.012550 0.012496 
0.012444 0.012392 
0.013732 0.013679 
0.013044 0.012990 
0.013210 0.013158 
0.012752 0.012698 
0.012675 0.012623 
0.012072 0.012023 
0.013038 0.012988 
0.012742 0.012688 
0.013396 0.013342 
0.012880 0.012827 
0.013139 0.013087 
0.012753 0.012700 
0.012904 0.012852 
0.013045 0.012991 
0.012737 0.012685 
0.012625 0.012573 
0.012085 0.012033 
0.012840 0.012786 
0.012960 0.012906 
0.012862 0.012811 
0.012859 0.012807 
0.012235 0.012182 
0.012274 0.012223 
0.011993 0.011942 
0.012017 0.011965 
0.012057 0.012005 
0.012799 0.012748 
0.012178 0.012127 
0.012439 0.012387 
0.013302 0.013250 
0.011941 0.011888 
0.013212 0.013160 
0.012977 0.012925 
0.012506 0.012454 
0.012566 0.012516 
0.013043 0.012989 
0.012357 0.012305 
0.012580 0.012530 
0.012277 0.012224 
0.012571 0.012520 
0.012512 0.012461 
0.011790 0.011738 
0.012436 0.012385 
0.013239 0.013186 
0.012947 0.012896 
0.012028 0.011975 
0.013037 0.012984 
0.012301 0.012249 
0.012237 0.012185 
0.012923 0.012868 
0.013961 0.013910 
0.012458 0.012403 
0.012874 0.012821 
0.012770 0.012715 
0.012576 0.012524 
0.012498 0.012445 
0.012408 0.012356 
0.012226 0.012173 
0.012167 0.012116 
0.012307 0.012255 
0.012649 0.012596 
0.012336 0.012284 
0.012325 0.012272 
0.012876 0.012821 
0.012846 0.012794 
0.012187 0.012135 
0.011932 0.011874 
0.012289 0.012235 
0.012150 0.012097 
0.012674 0.012623 
0.011849 0.011798 
0.012556 0.012504 
0.012809 0.012757 
0.012680 0.012628 
0.013153 0.013102 
0.012884 0.012832 
0.012372 0.012319 
0.012700 0.012648 
0.012323 0.012271 
0.012314 0.012261 
0.012311 0.012259 
0.012638 0.012584 
0.013237 0.013185 
0.012531 0.012478 
0.012492 0.012438 
0.012795 0.012741 
0.012681 0.012630 
0.012594 0.012540 
0.012549 0.012497 
0.012643 0.012591 
0.012885 0.012835 
0.012374 0.012323 
0.012340 0.012265 
0.012482 0.012402 
0.012933 0.012840 
0.012033 0.011954 
0.012163 0.012089 
0.012627 0.012544 
0.013174 0.013099 
0.012920 0.012847 
0.012712 0.012638 
0.012316 0.012231 
0.012363 0.012277 
0.012305 0.012226 
0.012670 0.012593 
0.012700 0.012625 
0.012806 0.012733 
0.012715 0.012631 
0.012968 0.012883 
0.012439 0.012356 
0.012064 0.011976 
0.013141 0.013070 
0.012284 0.012196 
0.012629 0.012556 
0.013028 0.012951 
0.012191 0.012113 
0.012486 0.012399 
0.013073 0.012990 
0.012489 0.012435 
0.012675 0.012598 
0.013060 0.012986 
0.012487 0.012400 
0.012570 0.012491 
0.011998 0.011912 
0.012259 0.012169 
0.012953 0.012865 
0.011901 0.011828 
0.012963 0.012890 
0.012770 0.012683 
0.012800 0.012710 
0.012963 0.012886 
0.012604 0.012526 
0.012479 0.012390 
0.012323 0.012249 
0.012619 0.012530 
0.012609 0.012529 
0.012527 0.012440 
0.012930 0.012846 
0.012293 0.012215 
0.012843 0.012752 
0.012432 0.012356 
0.013094 0.013023 
0.013112 0.013029 
0.012199 0.012115 
0.012493 0.012415 
0.012104 0.012017 
0.012937 0.012861 
0.011869 0.011790 
0.012537 0.012464 
0.012839 0.012756 
0.012689 0.012604 
0.013020 0.012941 
0.012257 0.012177 
0.012207 0.012116 
0.012606 0.012532 
0.012681 0.012591 
0.012541 0.012461 
0.012689 0.012611 
0.011938 0.011861 
0.013075 0.013001 
0.012441 0.012364 
0.012854 0.012772 
0.013009 0.012931 
0.013444 0.013366 
0.012681 0.012604 
0.012262 0.012183 
0.012393 0.012317 
0.012462 0.012386 
0.012774 0.012689 
0.012620 0.012529 
0.012768 0.012691 
0.012464 0.012375 
0.013234 0.013142 
0.012767 0.012683 
0.012643 0.012569 
0.012200 0.012117 
0.013336 0.013260 
0.012920 0.012846 
0.012202 0.012132 
0.012385 0.012310 
0.012741 0.012661 
0.012888 0.012813 
0.013059 0.012980 
0.012416 0.012337 
0.012934 0.012860 
0.012603 0.012526 
0.012664 0.012580 
0.013389 0.013313 
0.012012 0.011937 
0.012154 0.012076 
0.012796 0.012706 
0.013333 0.013257 
0.011819 0.011740 
0.013015 0.012934 
0.012585 0.012511 
0.012908 0.012822 
0.013056 0.012978 
0.012533 0.012453 
0.012678 0.012591 
0.012465 0.012388 
0.012929 0.012845 
0.013112 0.013036 
0.013248 0.013169 
0.012441 0.012358 
0.012027 0.011957 
0.013174 0.013095 
0.012869 0.012780 
0.012470 0.012393 
0.012752 0.012674 
0.012307 0.012236 
0.012210 0.012144 
0.012388 0.012314 
0.012554 0.012466 
0.012872 0.012795 
0.012822 0.012747 
0.012030 0.011946 
0.012875 0.012798 
0.012822 0.012731 
0.012131 0.012053 
0.012491 0.012413 
0.012359 0.012280 
0.012429 0.012341 
0.012495 0.012415 
0.012906 0.012827 
0.012039 0.011970 
0.012132 0.012053 
0.011986 0.011916 
0.013334 0.013258 
0.012481 0.012406 
0.012763 0.012690 
0.012030 0.011947 
0.012892 0.012815 
0.012671 0.012584 
0.012072 0.011996 
0.012556 0.012470 
0.012586 0.012505 
0.012386 0.012310 
0.012504 0.012428 
0.012648 0.012568 
0.012600 0.012515 
0.012530 0.012449 
0.012158 0.012081 
0.012973 0.012892 
0.012239 0.012166 
0.012856 0.012767 
0.012783 0.012701 
0.012126 0.012038 
0.012327 0.012249 
0.012828 0.012743 
0.012476 0.012416 
0.011631 0.011578 
0.012519 0.012466 
0.012748 0.012696 
0.012837 0.012785 
0.012785 0.012731 
0.013086 0.013032 
0.013283 0.013233 
0.012599 0.012545 
0.013169 0.013115 
0.012474 0.012418 
0.013206 0.013155 
0.012716 0.012661 
0.011748 0.011698 
0.012933 0.012881 
0.012565 0.012514 
0.013115 0.013063 
0.012862 0.012809 
0.011983 0.011931 
0.011935 0.011885 
0.012755 0.012702 
0.012138 0.012085 
0.012369 0.012314 
0.012560 0.012506 
0.013310 0.013257 
0.012834 0.012781 
0.012730 0.012676 
0.012767 0.012713 
0.013010 0.012955 
0.012570 0.012518 
0.012652 0.012591 
0.012937 0.012881 
0.012784 0.012730 
0.013390 0.013336 
0.012815 0.012760 
0.012828 0.012775 
0.012947 0.012894 
0.012917 0.012861 
0.012184 0.012131 
0.012184 0.012132 
0.012954 0.012877 
0.013489 0.013408 
0.012409 0.012324 
0.012191 0.012112 
0.012971 0.012894 
0.012640 0.012563 
0.013096 0.013009 
0.012800 0.012721 
0.012838 0.012763 
0.012213 0.012131 
0.012612 0.012521 
0.012804 0.012729 
0.012272 0.012189 
0.012255 0.012162 
0.012868 0.012794 
0.012478 0.012395 
0.013067 0.012993 
0.012618 0.012538 
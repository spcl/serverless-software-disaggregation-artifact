[03:05:34:304547] [T 706816] [info] Executing serverless-rdma executor with 1 cores! Waiting for client at 148.187.105.52:10005 
[03:05:34:306219] [T 706816] [info] Configuration options: expecting function size 3291512, function payloads 3410000, receive WCs buffer size 32, max inline data 0, hot polling timeout 0 
[03:05:34:306223] [T 706816] [info] My manager runs at 148.187.105.51:10000, its secret is 4660, the accounting buffer is at 140737354063872 with rkey 125400 
[03:05:34:326194] [T 706817] [info] Thread 0 Established connection to the manager! 
[03:05:34:330908] [T 706817] [info] Thread 0 Established connection to client! 
[03:05:34:340801] [T 706817] [info] Thread 0 begins work with timeout 0 
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
       Date/Time | 2023-04-07 03:05:34
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
0.025681 0.025606 
0.025144 0.025066 
0.024389 0.024326 
 WARNING: Particle 996 had a negative distance to a lattice boundary
 WARNING: Particle 997 had a negative distance to a lattice boundary
0.029849 0.029785 
0.024894 0.024813 
0.027427 0.027344 
 WARNING: Particle 999 had a negative distance to a lattice boundary
0.027028 0.026954 
0.026719 0.026635 
0.026174 0.026099 
0.025617 0.025548 
0.025553 0.025471 
0.026308 0.026235 
0.026816 0.026736 
0.026791 0.026716 
0.025765 0.025696 
0.025213 0.025137 
0.026511 0.026439 
0.025321 0.025245 
0.025800 0.025721 
0.026620 0.026541 
0.025303 0.025234 
0.026025 0.025960 
0.026585 0.026514 
0.026279 0.026202 
0.026773 0.026702 
0.026956 0.026887 
0.026882 0.026797 
0.026800 0.026729 
0.025725 0.025645 
0.026620 0.026552 
0.026954 0.026884 
0.027121 0.027045 
0.026721 0.026652 
0.026958 0.026884 
0.025972 0.025901 
0.025828 0.025747 
0.026800 0.026725 
0.026386 0.026306 
0.024871 0.024795 
0.026088 0.026019 
0.025964 0.025887 
0.026207 0.026120 
0.026396 0.026327 
0.025589 0.025509 
0.027720 0.027640 
0.026834 0.026765 
0.025675 0.025606 
0.026541 0.026464 
0.027315 0.027235 
0.027031 0.026954 
0.025905 0.025830 
0.026296 0.026218 
0.026343 0.026261 
0.026145 0.026078 
0.025526 0.025455 
0.025949 0.025871 
0.026356 0.026281 
0.026256 0.026186 
0.025952 0.025876 
0.026864 0.026793 
0.024817 0.024747 
0.026491 0.026422 
0.025315 0.025239 
0.025205 0.025135 
0.024951 0.024876 
0.026205 0.026133 
0.025492 0.025420 
0.025922 0.025836 
0.025589 0.025517 
0.025799 0.025735 
0.025638 0.025569 
0.026997 0.026918 
0.026692 0.026614 
0.026845 0.026761 
0.026663 0.026579 
0.026048 0.025977 
0.025821 0.025740 
0.026085 0.026007 
0.027117 0.027040 
0.026915 0.026842 
0.025667 0.025589 
0.025525 0.025442 
0.027414 0.027338 
0.025834 0.025755 
0.026593 0.026522 
0.025373 0.025299 
0.027984 0.027913 
0.026745 0.026669 
0.026076 0.026000 
0.026661 0.026585 
0.026912 0.026840 
0.025414 0.025342 
0.026357 0.026272 
0.026702 0.026633 
0.026521 0.026449 
0.026967 0.026891 
0.027122 0.027050 
0.027871 0.027791 
0.026918 0.026836 
0.026343 0.026265 
0.025794 0.025726 
0.027243 0.027173 
0.027621 0.027538 
0.026378 0.026305 
0.027078 0.027003 
0.025772 0.025701 
0.024152 0.024080 
0.026690 0.026609 
0.025660 0.025591 
0.025866 0.025783 
0.025917 0.025846 
0.024935 0.024859 
0.025810 0.025743 
0.025162 0.025086 
0.025725 0.025649 
0.024900 0.024820 
0.026236 0.026160 
0.025566 0.025487 
0.026360 0.026289 
0.026592 0.026521 
0.024158 0.024083 
0.024630 0.024559 
0.024641 0.024565 
0.024657 0.024581 
0.025587 0.025513 
0.024672 0.024597 
0.025044 0.024973 
0.025192 0.025121 
0.026192 0.026111 
0.024704 0.024626 
0.025535 0.025461 
0.025549 0.025461 
0.025591 0.025526 
0.025619 0.025543 
0.026262 0.026192 
0.025448 0.025380 
0.025307 0.025238 
0.025564 0.025490 
0.025164 0.025080 
0.025354 0.025277 
0.026136 0.026065 
0.025349 0.025274 
0.025787 0.025717 
0.025037 0.024958 
0.025618 0.025537 
0.025511 0.025440 
0.025635 0.025556 
0.025299 0.025225 
0.025678 0.025597 
0.026451 0.026384 
0.027042 0.026967 
0.026026 0.025954 
0.025731 0.025652 
0.025454 0.025385 
0.026199 0.026123 
0.026459 0.026383 
0.025385 0.025312 
0.025572 0.025499 
0.025713 0.025638 
0.025850 0.025779 
0.026034 0.025956 
0.026158 0.026088 
0.025451 0.025372 
0.025832 0.025750 
0.026662 0.026595 
0.023708 0.023640 
0.025769 0.025691 
0.023776 0.023700 
0.024424 0.024351 
0.024814 0.024740 
0.025635 0.025548 
0.025917 0.025842 
0.024463 0.024392 
0.026099 0.026020 
0.025596 0.025529 
0.026129 0.026046 
0.027054 0.026978 
0.026286 0.026208 
0.024622 0.024544 
0.024777 0.024700 
0.025948 0.025874 
0.025286 0.025207 
0.025915 0.025843 
0.026397 0.026320 
0.024748 0.024675 
0.025899 0.025817 
0.025923 0.025843 
0.024765 0.024689 
0.025401 0.025324 
0.024450 0.024368 
0.025913 0.025841 
0.025307 0.025236 
0.025527 0.025450 
0.025998 0.025928 
0.025749 0.025672 
0.025444 0.025360 
0.024799 0.024722 
0.025475 0.025401 
0.026163 0.026092 
0.026700 0.026630 
0.025175 0.025104 
0.025767 0.025688 
0.025624 0.025558 
0.025963 0.025905 
0.025046 0.024989 
0.024948 0.024900 
0.025631 0.025580 
0.026451 0.026402 
0.026280 0.026230 
0.025555 0.025505 
0.025907 0.025857 
0.025775 0.025729 
0.025727 0.025677 
0.024705 0.024655 
0.025358 0.025307 
0.024613 0.024564 
0.025646 0.025596 
0.025146 0.025096 
0.026039 0.025988 
0.026087 0.026038 
0.025428 0.025377 
0.024977 0.024929 
0.025856 0.025805 
0.026774 0.026710 
0.024850 0.024799 
0.026358 0.026308 
0.025343 0.025293 
0.025462 0.025413 
0.025238 0.025187 
0.025841 0.025791 
0.025129 0.025079 
0.025906 0.025854 
0.026201 0.026152 
0.025955 0.025904 
0.025007 0.024956 
0.026406 0.026356 
0.024904 0.024854 
0.024684 0.024634 
0.025001 0.024951 
0.025418 0.025364 
0.025877 0.025827 
0.026837 0.026784 
0.026830 0.026780 
0.025341 0.025289 
0.025942 0.025893 
0.025833 0.025784 
0.025686 0.025635 
0.025584 0.025535 
0.024734 0.024685 
0.024483 0.024435 
0.025300 0.025250 
0.025561 0.025511 
0.027099 0.027029 
0.024973 0.024889 
0.024596 0.024523 
0.027285 0.027208 
0.027242 0.027169 
0.028075 0.028005 
0.025491 0.025417 
0.026391 0.026320 
0.025303 0.025215 
0.026177 0.026103 
0.025491 0.025417 
0.025660 0.025577 
0.026212 0.026138 
0.025439 0.025369 
0.025179 0.025105 
0.025865 0.025781 
0.025653 0.025576 
0.025459 0.025388 
0.025219 0.025141 
0.025968 0.025889 
0.026203 0.026127 
0.024961 0.024890 
0.026291 0.026204 
0.025824 0.025743 
0.026607 0.026538 
0.026014 0.025942 
0.025461 0.025382 
0.024535 0.024466 
0.024626 0.024549 
0.024314 0.024247 
0.024745 0.024666 
0.025384 0.025309 
0.025221 0.025150 
0.025701 0.025624 
0.025414 0.025342 
0.025976 0.025898 
0.025133 0.025054 
0.025335 0.025267 
0.025754 0.025684 
0.025296 0.025223 
0.025406 0.025337 
0.026212 0.026138 
0.025390 0.025318 
0.025559 0.025487 
0.025213 0.025145 
0.026098 0.026024 
0.025489 0.025408 
0.024392 0.024317 
0.026207 0.026133 
0.024624 0.024548 
0.026699 0.026626 
0.025255 0.025183 
0.025919 0.025846 
0.024467 0.024381 
0.024834 0.024753 
0.024915 0.024844 
0.024695 0.024643 
0.025120 0.025048 
0.024913 0.024834 
0.024800 0.024730 
0.025894 0.025818 
0.025156 0.025077 
0.026262 0.026186 
0.025955 0.025880 
0.025647 0.025572 
0.025938 0.025855 
0.025997 0.025914 
0.025104 0.025031 
0.025857 0.025784 
0.025810 0.025738 
0.025244 0.025172 
0.026938 0.026850 
0.025128 0.025052 
0.025704 0.025625 
0.024812 0.024736 
0.026053 0.025975 
0.026278 0.026204 
0.024670 0.024597 
0.025601 0.025526 
0.025146 0.025067 
0.024814 0.024741 
0.027016 0.026932 
0.026554 0.026478 
0.025583 0.025510 
0.025794 0.025711 
0.025620 0.025550 
0.026035 0.025961 
0.025326 0.025257 
0.025988 0.025907 
0.025396 0.025320 
0.026758 0.026685 
0.026463 0.026390 
0.025449 0.025370 
0.025812 0.025741 
0.025860 0.025776 
0.026233 0.026163 
0.025249 0.025170 
0.025486 0.025405 
0.025966 0.025890 
0.026769 0.026687 
0.026092 0.026015 
0.026330 0.026255 
0.025679 0.025609 
0.026398 0.026326 
0.025520 0.025445 
0.026963 0.026886 
0.026090 0.026010 
0.026425 0.026342 
0.026704 0.026619 
0.025076 0.024992 
0.025721 0.025646 
0.025211 0.025140 
0.025911 0.025832 
0.025783 0.025713 
0.025280 0.025205 
0.025886 0.025813 
0.025152 0.025071 
0.027161 0.027086 
0.025123 0.025051 
0.025435 0.025372 
0.025867 0.025792 
0.025430 0.025356 
0.026767 0.026687 
0.025219 0.025137 
0.025737 0.025657 
0.026352 0.026281 
0.025504 0.025420 
0.025129 0.025053 
0.025393 0.025317 
0.025657 0.025585 
0.025065 0.024990 
0.025548 0.025469 
0.025591 0.025513 
0.024651 0.024575 
0.024814 0.024731 
0.025693 0.025618 
0.025728 0.025653 
0.023867 0.023797 
0.025295 0.025222 
0.025270 0.025194 
0.024830 0.024755 
0.024908 0.024826 
0.025604 0.025531 
0.024630 0.024554 
0.024564 0.024491 
0.024383 0.024301 
0.024228 0.024154 
0.024276 0.024204 
0.025095 0.025018 
0.025727 0.025658 
0.026445 0.026372 
0.026187 0.026107 
0.025362 0.025283 
0.026739 0.026659 
0.025540 0.025468 
0.025753 0.025683 
0.024638 0.024566 
0.026055 0.025982 
0.025758 0.025675 
0.026058 0.025975 
0.025718 0.025643 
0.026059 0.025981 
0.025518 0.025432 
0.025576 0.025501 
0.025732 0.025660 
0.024770 0.024697 
0.025596 0.025513 
0.024894 0.024819 
0.025531 0.025458 
0.025180 0.025102 
0.025549 0.025465 
0.026557 0.026483 
0.025492 0.025415 
0.025995 0.025911 
0.025360 0.025293 
0.026003 0.025934 
0.026278 0.026206 
0.025513 0.025437 
0.026201 0.026126 
0.024780 0.024711 
0.026381 0.026302 
0.025926 0.025845 
0.024923 0.024845 
0.025027 0.024953 
0.024721 0.024651 
0.026403 0.026329 
0.025556 0.025473 
0.026480 0.026405 
0.025390 0.025319 
0.024895 0.024822 
0.025236 0.025148 
0.025377 0.025301 
0.025092 0.025011 
0.025835 0.025761 
0.024865 0.024793 
0.025445 0.025361 
0.026030 0.025960 
0.025135 0.025060 
0.025517 0.025446 
0.026675 0.026605 
0.025698 0.025614 
0.026224 0.026150 
0.026523 0.026444 
0.025835 0.025766 
0.025368 0.025297 
0.025084 0.025009 
0.025017 0.024934 
0.024784 0.024694 
0.024605 0.024529 
0.026058 0.025986 
0.026206 0.026132 
0.026550 0.026479 
0.025835 0.025760 
0.025961 0.025886 
0.025536 0.025455 
0.027034 0.026955 
0.024613 0.024531 
0.026179 0.026099 
0.024577 0.024493 
0.025412 0.025332 
0.026277 0.026204 
0.025850 0.025780 
0.025018 0.024938 
0.025418 0.025331 
0.025803 0.025726 
0.024956 0.024882 
0.026245 0.026167 
0.024896 0.024818 
0.024824 0.024753 
0.026216 0.026134 
0.026529 0.026452 
0.025962 0.025887 
0.025407 0.025335 
0.026071 0.025996 
0.025785 0.025701 
0.025875 0.025804 
0.025499 0.025427 
0.025209 0.025134 
0.025606 0.025536 
0.026358 0.026282 
0.024779 0.024696 
0.025494 0.025421 
0.025806 0.025724 
0.024903 0.024830 
0.026104 0.026030 
0.025848 0.025775 
0.026250 0.026176 
0.025146 0.025070 
0.025297 0.025222 
0.025856 0.025781 
0.025166 0.025089 
0.025905 0.025829 
0.025164 0.025091 
0.024874 0.024798 
0.025225 0.025139 
0.026718 0.026637 
0.025330 0.025245 
0.025631 0.025548 
0.026481 0.026401 
0.025466 0.025390 
0.024731 0.024648 
0.025674 0.025601 
0.025971 0.025896 
0.025385 0.025311 
0.026122 0.026049 
0.026196 0.026123 
0.024578 0.024500 
0.025714 0.025641 
0.025199 0.025119 
0.024635 0.024559 
0.024516 0.024443 
0.024403 0.024331 
0.025886 0.025810 
0.025036 0.024956 
0.025177 0.025100 
0.026009 0.025936 
0.025533 0.025464 
0.026383 0.026311 
0.026769 0.026696 
0.026428 0.026348 
0.025087 0.025018 
0.024966 0.024894 
0.024612 0.024536 
0.025065 0.024979 
0.026134 0.026063 
0.025971 0.025893 
0.025985 0.025907 
0.027200 0.027113 
0.025645 0.025565 
0.025740 0.025667 
0.026129 0.026056 
0.024860 0.024782 
0.025349 0.025276 
0.025797 0.025718 
0.025739 0.025668 
0.024275 0.024204 
0.024768 0.024697 
0.026364 0.026290 
0.025359 0.025288 
0.024474 0.024398 
0.026109 0.026036 
0.024113 0.024034 
0.025765 0.025692 
0.025375 0.025297 
0.024212 0.024137 
0.026568 0.026485 
0.026586 0.026506 
0.025740 0.025667 
0.025092 0.025006 
0.025967 0.025883 
0.025589 0.025510 
0.025645 0.025566 
0.024717 0.024630 
0.025116 0.025040 
0.025602 0.025517 
0.025971 0.025893 
0.025891 0.025822 
0.027097 0.027017 
0.025975 0.025890 
0.025341 0.025257 
0.025547 0.025473 
0.025222 0.025149 
0.026655 0.026576 
0.026030 0.025954 
0.025639 0.025557 
0.025362 0.025276 
0.024776 0.024695 
0.026842 0.026767 
0.026161 0.026079 
0.024903 0.024831 
0.025647 0.025567 
0.025998 0.025928 
0.025438 0.025361 
0.026117 0.026046 
0.026052 0.025976 
0.025542 0.025455 
0.025390 0.025312 
0.026016 0.025937 
0.025326 0.025247 
0.025414 0.025341 
0.025692 0.025616 
0.025192 0.025121 
0.025239 0.025153 
0.025876 0.025800 
0.026637 0.026557 
0.024707 0.024636 
0.025457 0.025377 
0.025344 0.025265 
0.025887 0.025806 
0.026796 0.026711 
0.025053 0.024974 
0.025468 0.025393 
0.025865 0.025788 
0.026542 0.026460 
0.024972 0.024894 
0.027074 0.026994 
0.026241 0.026166 
0.025958 0.025877 
0.025366 0.025291 
0.025638 0.025562 
0.024404 0.024321 
0.023795 0.023711 
0.026048 0.025968 
0.025872 0.025804 
0.025263 0.025188 
0.024956 0.024873 
0.025899 0.025825 
0.025971 0.025900 
0.025385 0.025311 
0.025394 0.025323 
0.025542 0.025456 
0.025272 0.025192 
0.025406 0.025325 
0.025346 0.025276 
0.025588 0.025511 
0.025451 0.025378 
0.025961 0.025883 
0.025697 0.025625 
0.023995 0.023923 
0.025967 0.025896 
0.025078 0.025003 
0.026187 0.026117 
0.024217 0.024143 
0.025245 0.025165 
0.024346 0.024268 
0.025371 0.025293 
0.026283 0.026200 
0.025603 0.025519 
0.026807 0.026739 
0.026012 0.025940 
0.025368 0.025289 
0.025926 0.025846 
0.024710 0.024632 
0.025896 0.025816 
0.026929 0.026852 
0.026144 0.026068 
0.026734 0.026658 
0.025617 0.025539 
0.024850 0.024776 
0.025851 0.025774 
0.024510 0.024431 
0.025644 0.025574 
0.025435 0.025354 
0.025469 0.025396 
0.026863 0.026785 
0.025191 0.025110 
0.025781 0.025711 
0.025488 0.025415 
0.025464 0.025386 
0.025538 0.025470 
0.025418 0.025346 
0.025776 0.025700 
0.026478 0.026404 
0.025077 0.025007 
0.024589 0.024513 
0.026226 0.026156 
0.025528 0.025455 
0.026118 0.026040 
0.025183 0.025100 
0.024798 0.024725 
0.024539 0.024458 
0.025698 0.025618 
0.025734 0.025664 
0.025574 0.025495 
0.025498 0.025429 
0.025702 0.025624 
0.026752 0.026681 
0.026149 0.026067 
0.025747 0.025676 
0.025217 0.025140 
0.025481 0.025400 
0.025357 0.025282 
0.025137 0.025062 
0.024657 0.024577 
0.024743 0.024669 
0.025294 0.025226 
0.025887 0.025805 
0.026089 0.026011 
0.026243 0.026168 
0.025364 0.025291 
0.025579 0.025501 
0.025803 0.025730 
0.026046 0.025973 
0.025816 0.025739 
0.025168 0.025096 
0.025870 0.025805 
0.025218 0.025148 
0.025434 0.025351 
0.024356 0.024279 
0.026209 0.026117 
0.025541 0.025464 
0.026471 0.026397 
0.024804 0.024717 
0.025447 0.025365 
0.026691 0.026619 
0.025719 0.025644 
0.024830 0.024759 
0.026777 0.026698 
0.025641 0.025566 
0.025026 0.024945 
0.024908 0.024828 
0.025721 0.025643 
0.026155 0.026071 
0.025282 0.025198 
0.025594 0.025512 
0.026461 0.026392 
0.025531 0.025459 
0.025083 0.025013 
0.024502 0.024422 
0.025803 0.025721 
0.025054 0.024970 
0.025622 0.025550 
0.025613 0.025543 
0.026780 0.026707 
0.025612 0.025534 
0.025597 0.025524 
0.025764 0.025693 
0.026081 0.026012 
0.024932 0.024854 
0.025929 0.025852 
0.024766 0.024688 
0.025721 0.025634 
0.024668 0.024586 
0.025165 0.025088 
0.024916 0.024844 
0.025183 0.025111 
0.025917 0.025843 
0.025903 0.025824 
0.025759 0.025693 
0.025796 0.025717 
0.025595 0.025519 
0.025525 0.025442 
0.025497 0.025425 
0.025195 0.025112 
0.024999 0.024924 
0.025015 0.024936 
0.025347 0.025269 
0.025888 0.025807 
0.024936 0.024858 
0.025015 0.024945 
0.025280 0.025204 
0.024235 0.024160 
0.024680 0.024599 
0.024594 0.024523 
0.024015 0.023935 
0.025736 0.025648 
0.024709 0.024637 
0.025509 0.025436 
0.024168 0.024098 
0.024976 0.024904 
0.025078 0.024993 
0.026795 0.026707 
0.024322 0.024244 
0.025009 0.024934 
0.026179 0.026096 
0.024921 0.024850 
0.025127 0.025047 
0.025791 0.025714 
0.024815 0.024735 
0.025021 0.024942 
0.025305 0.025224 
0.025342 0.025264 
0.025219 0.025146 
0.024835 0.024751 
0.023566 0.023490 
0.025058 0.024979 
0.025046 0.024971 
0.025120 0.025044 
0.025278 0.025194 
0.023738 0.023663 
0.024396 0.024317 
0.025148 0.025068 
0.025446 0.025373 
0.025796 0.025720 
0.025710 0.025635 
0.025448 0.025367 
0.025611 0.025535 
0.026205 0.026129 
0.025007 0.024937 
0.024686 0.024609 
0.024053 0.023983 
0.026813 0.026735 
0.025981 0.025909 
0.025672 0.025601 
0.025304 0.025233 
0.025438 0.025365 
0.023619 0.023549 
0.025525 0.025453 
0.025184 0.025105 
0.025913 0.025836 
0.025299 0.025225 
0.025436 0.025361 
0.024707 0.024627 
0.025311 0.025233 
0.025181 0.025103 
0.025257 0.025180 
0.024707 0.024628 
0.024826 0.024754 
0.024905 0.024834 
0.025202 0.025126 
0.025211 0.025137 
0.025377 0.025303 
0.025316 0.025244 
0.024404 0.024325 
0.025207 0.025134 
0.024794 0.024722 
0.024273 0.024203 
0.024333 0.024252 
0.024611 0.024531 
0.025471 0.025392 
0.026315 0.026243 
0.023370 0.023289 
0.025884 0.025810 
0.024969 0.024892 
0.024592 0.024515 
0.024807 0.024733 
0.024876 0.024794 
0.024660 0.024573 
0.025483 0.025412 
0.025123 0.025044 
0.024385 0.024311 
0.025989 0.025909 
0.024913 0.024848 
0.024675 0.024603 
0.026182 0.026111 
0.025524 0.025453 
0.025218 0.025145 
0.025471 0.025402 
0.023594 0.023507 
0.024849 0.024769 
0.025309 0.025223 
0.026056 0.025980 
0.025535 0.025461 
0.025343 0.025264 
0.024834 0.024754 
0.025798 0.025721 
0.024455 0.024382 
0.025081 0.024999 
0.025081 0.025005 
0.025073 0.024996 
0.025440 0.025363 
0.025684 0.025608 
0.025489 0.025414 
0.026090 0.026019 
0.025364 0.025294 
0.025861 0.025791 
0.024959 0.024882 
0.024906 0.024832 
0.025041 0.024964 
0.025220 0.025135 
0.026492 0.026412 
0.025134 0.025059 
0.025691 0.025609 
0.025416 0.025339 
0.025990 0.025907 
0.025693 0.025615 
0.025941 0.025872 
0.024673 0.024599 
0.025050 0.024979 
0.024467 0.024397 
0.025667 0.025588 
0.024834 0.024758 
0.024950 0.024871 
0.025493 0.025411 
0.024742 0.024673 
0.025016 0.024938 
0.025678 0.025601 
0.025613 0.025538 
0.025116 0.025046 
0.025952 0.025880 
0.025454 0.025367 
0.026044 0.025972 
0.025508 0.025431 
0.024805 0.024728 
0.024904 0.024828 
0.025489 0.025410 
0.024888 0.024806 
0.025184 0.025111 
0.025291 0.025212 
0.025834 0.025764 
0.024648 0.024575 
0.024671 0.024592 
0.024425 0.024349 
0.025509 0.025423 
0.025304 0.025231 
0.025613 0.025542 
0.025264 0.025194 
0.025407 0.025330 
0.025022 0.024944 
0.025679 0.025604 
0.024648 0.024569 
0.024546 0.024470 
0.025272 0.025195 
0.024520 0.024447 
0.025746 0.025660 
0.025501 0.025427 
0.024126 0.024047 
0.025292 0.025219 
0.025298 0.025219 
0.026100 0.026025 
0.025021 0.024935 
0.026713 0.026636 
0.024966 0.024889 
0.025194 0.025117 
0.024755 0.024684 
0.024902 0.024828 
0.025227 0.025147 
0.024693 0.024610 
0.025200 0.025121 
0.024957 0.024878 
0.025321 0.025248 
0.025712 0.025635 
0.025317 0.025236 
0.025176 0.025106 
0.025036 0.024964 
0.025614 0.025540 
0.024228 0.024148 
0.025156 0.025085 
0.025001 0.024921 
0.024845 0.024764 
0.024919 0.024835 
0.024417 0.024353 
0.026268 0.026192 
0.025267 0.025192 
0.023936 0.023861 
0.024476 0.024394 
0.024290 0.024209 
0.025213 0.025142 
0.024173 0.024097 
0.025160 0.025086 
0.025106 0.025033 
0.025426 0.025351 
0.026108 0.026028 
0.024438 0.024357 
0.024288 0.024216 
0.024695 0.024625 
0.024447 0.024368 
0.024367 0.024292 
0.025000 0.024924 
0.024186 0.024111 
0.024902 0.024823 
0.023826 0.023751 
0.025886 0.025801 
0.026191 0.026118 
0.025451 0.025380 
0.025543 0.025480 
0.024621 0.024537 
0.025185 0.025115 
0.024451 0.024368 
0.025280 0.025194 
0.025282 0.025197 
0.024897 0.024817 
0.025128 0.025046 
0.025199 0.025124 
0.025071 0.025002 
0.025606 0.025527 
0.024779 0.024706 
0.026464 0.026386 
0.025513 0.025436 
0.024266 0.024192 
0.024393 0.024321 
0.025257 0.025180 
0.025658 0.025574 
0.026335 0.026255 
0.024591 0.024520 
0.025549 0.025480 
0.025374 0.025296 
0.025564 0.025488 
0.025753 0.025676 
0.024166 0.024089 
0.025179 0.025097 
0.024838 0.024755 
0.025580 0.025502 
0.023987 0.023902 
0.025943 0.025867 
0.024267 0.024198 
0.025911 0.025836 
0.026313 0.026253 
0.025681 0.025607 
0.025615 0.025544 
0.024594 0.024513 
0.025134 0.025059 
0.025306 0.025214 
0.025660 0.025584 
0.025213 0.025136 
0.024746 0.024675 
0.026142 0.026069 
0.025616 0.025544 
0.025101 0.025024 
0.025693 0.025610 
0.024952 0.024876 
0.025095 0.025017 
0.025884 0.025799 
0.025069 0.024984 
0.025441 0.025363 
0.026068 0.025996 
0.025414 0.025344 
0.026284 0.026209 
0.024969 0.024895 
0.024996 0.024924 
0.025151 0.025079 
0.023973 0.023898 
0.024272 0.024200 
0.024539 0.024465 
0.024880 0.024807 
0.025001 0.024924 
0.024444 0.024369 
0.024427 0.024356 
0.026199 0.026122 
0.024841 0.024773 
0.024671 0.024599 
0.024054 0.023975 
0.025538 0.025451 
0.025145 0.025067 
0.024262 0.024192 
0.024997 0.024924 
0.025085 0.025002 
0.024732 0.024650 
0.024612 0.024538 
0.025000 0.024931 
0.024930 0.024857 
0.024957 0.024874 
0.024823 0.024743 
0.025402 0.025329 
0.024488 0.024420 
0.025412 0.025327 
0.026054 0.025969 
0.023976 0.023903 
0.025068 0.024991 
0.025112 0.025040 
0.024859 0.024784 
0.024306 0.024232 
0.025457 0.025387 
0.024979 0.024899 
0.025611 0.025530 
0.025938 0.025861 
0.025531 0.025456 
0.026203 0.026136 
0.025386 0.025312 
0.025715 0.025639 
0.024862 0.024788 
0.026497 0.026426 
0.024279 0.024201 
0.024362 0.024290 
0.025079 0.025003 
0.024578 0.024501 
0.025509 0.025428 
0.025406 0.025328 
0.024605 0.024535 
0.024539 0.024470 
0.025217 0.025135 
0.024181 0.024106 
0.024526 0.024450 
0.024627 0.024551 
0.025978 0.025902 
0.024839 0.024768 
0.025447 0.025365 
0.025260 0.025180 
0.025790 0.025707 
0.024083 0.024014 
0.024888 0.024816 
0.025063 0.024978 
0.026015 0.025933 
0.026396 0.026317 
0.025931 0.025850 
0.025682 0.025597 
0.026410 0.026329 
0.025800 0.025727 
0.024763 0.024677 
0.025034 0.024950 
0.025718 0.025643 
0.025996 0.025913 
0.024846 0.024767 
0.024047 0.023978 
0.026874 0.026792 
0.025404 0.025334 
0.025462 0.025382 
0.024617 0.024541 
0.025684 0.025614 
0.024451 0.024369 
0.026109 0.026022 
0.025695 0.025620 
0.025173 0.025098 
0.024585 0.024512 
0.025342 0.025263 
0.024623 0.024544 
0.025962 0.025883 
0.024787 0.024708 
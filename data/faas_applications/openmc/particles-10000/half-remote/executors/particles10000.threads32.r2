[18:48:30:360443] [T 674103] [info] Executing serverless-rdma executor with 1 cores! Waiting for client at 148.187.105.52:10005 
[18:48:30:362391] [T 674103] [info] Configuration options: expecting function size 3291512, function payloads 3410000, receive WCs buffer size 32, max inline data 0, hot polling timeout 0 
[18:48:30:362396] [T 674103] [info] My manager runs at 148.187.105.51:10000, its secret is 4660, the accounting buffer is at 140737354063872 with rkey 1659216 
[18:48:30:383508] [T 674104] [info] Thread 0 Established connection to the manager! 
[18:48:30:388233] [T 674104] [info] Thread 0 Established connection to client! 
[18:48:30:403482] [T 674104] [info] Thread 0 begins work with timeout 0 
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
       Date/Time | 2023-04-06 18:48:30
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
0.023223 0.022909 
0.020712 0.020239 
0.019956 0.019674 
0.020184 0.019890 
0.019595 0.019312 
0.018345 0.018032 
0.015599 0.015285 
0.015654 0.015338 
0.015934 0.015617 
0.016175 0.015834 
0.016129 0.015820 
0.015388 0.015053 
0.015445 0.015125 
0.015252 0.014944 
0.015761 0.015422 
0.014873 0.014535 
0.015418 0.015079 
0.015448 0.015107 
0.016204 0.015867 
0.015562 0.015219 
0.018860 0.018524 
0.016229 0.015921 
0.015919 0.015596 
0.015613 0.015302 
0.015552 0.015243 
0.015519 0.015186 
0.016037 0.015695 
0.016284 0.015945 
0.016035 0.015691 
0.015839 0.015503 
0.015374 0.015030 
0.015734 0.015397 
0.016122 0.015757 
0.019264 0.018846 
0.015856 0.015415 
0.015288 0.014909 
0.015664 0.015295 
0.018001 0.017640 
0.017056 0.016708 
0.016193 0.015845 
0.016546 0.016199 
0.015212 0.014872 
0.016075 0.015707 
0.015852 0.015467 
0.015464 0.015090 
0.015360 0.014998 
0.015079 0.014709 
0.015888 0.015523 
0.015425 0.015048 
0.015826 0.015430 
0.016140 0.015770 
0.015155 0.014775 
0.015695 0.015327 
0.015015 0.014648 
0.015785 0.015419 
0.015524 0.015153 
0.015583 0.015212 
0.015646 0.015284 
0.016095 0.015715 
0.015815 0.015443 
0.015284 0.014911 
0.016248 0.015880 
0.015717 0.015353 
0.015200 0.014825 
0.016489 0.016122 
0.015650 0.015279 
0.017979 0.017600 
0.015591 0.015241 
0.015115 0.014764 
0.015610 0.015265 
0.015330 0.014984 
0.015932 0.015553 
0.015148 0.014778 
0.015463 0.015097 
0.018415 0.018035 
0.016201 0.015814 
0.015994 0.015634 
0.015319 0.014942 
0.015380 0.015002 
0.016372 0.016011 
0.016074 0.015706 
0.016356 0.015985 
0.015627 0.015253 
0.016252 0.015889 
0.015350 0.014968 
0.015698 0.015334 
0.015484 0.015099 
0.015380 0.015007 
0.015672 0.015300 
0.015975 0.015609 
0.015418 0.015043 
0.015778 0.015410 
0.015388 0.015025 
0.015851 0.015473 
0.015334 0.014962 
0.015352 0.014984 
0.015809 0.015446 
0.015672 0.015311 
0.015742 0.015367 
0.015776 0.015407 
0.015879 0.015502 
0.015800 0.015425 
0.015525 0.015149 
0.015778 0.015416 
0.015390 0.015007 
0.016181 0.015803 
0.015746 0.015373 
0.015463 0.015090 
0.015296 0.014928 
0.016147 0.015784 
0.015263 0.014898 
0.014973 0.014597 
0.016215 0.015854 
0.015426 0.015058 
0.015501 0.015126 
0.016441 0.016072 
0.016778 0.016400 
0.015529 0.015170 
0.014963 0.014582 
0.015035 0.014658 
0.015196 0.014832 
0.015465 0.015096 
0.015908 0.015543 
0.015430 0.015064 
0.015608 0.015248 
0.015763 0.015394 
0.015174 0.014792 
0.015570 0.015200 
0.016494 0.016121 
0.015291 0.014909 
0.015662 0.015278 
0.015460 0.015097 
0.015782 0.015412 
0.016759 0.016394 
0.015787 0.015411 
0.015661 0.015285 
0.016191 0.015817 
0.015644 0.015268 
0.016067 0.015691 
0.015948 0.015572 
0.015236 0.014862 
0.015356 0.014989 
0.015696 0.015324 
0.015179 0.014817 
0.014925 0.014562 
0.015238 0.014870 
0.015017 0.014656 
0.015556 0.015179 
0.015466 0.015096 
0.015822 0.015449 
0.015582 0.015211 
0.015125 0.014752 
0.016527 0.016155 
0.015720 0.015340 
0.015353 0.014977 
0.015676 0.015303 
0.015601 0.015227 
0.015244 0.014866 
0.015386 0.015015 
0.015331 0.014967 
0.015370 0.014993 
0.015225 0.014850 
0.015698 0.015321 
0.015250 0.014890 
0.015497 0.015124 
0.015313 0.014940 
0.015543 0.015161 
0.015252 0.014873 
0.015344 0.014978 
0.015512 0.015157 
0.015459 0.015087 
0.015550 0.015176 
0.015638 0.015266 
0.014976 0.014601 
0.015582 0.015216 
0.015564 0.015197 
0.015401 0.015028 
0.015288 0.014908 
0.015180 0.014806 
0.015604 0.015236 
0.016189 0.015814 
0.015270 0.014892 
0.015665 0.015292 
0.015782 0.015414 
0.015812 0.015438 
0.015733 0.015369 
0.016364 0.015993 
0.015832 0.015446 
0.015593 0.015217 
0.015901 0.015530 
0.015721 0.015343 
0.015373 0.015001 
0.015105 0.014727 
0.015284 0.014915 
0.015986 0.015616 
0.015257 0.014881 
0.016510 0.016147 
0.015431 0.015067 
0.015520 0.015158 
0.015029 0.014653 
0.015422 0.015062 
0.015312 0.014941 
0.015738 0.015357 
0.016226 0.015849 
0.015500 0.015125 
0.015393 0.015025 
0.015810 0.015437 
0.015240 0.014864 
0.015746 0.015376 
0.015298 0.014941 
0.014879 0.014503 
0.014846 0.014479 
0.015085 0.014702 
0.015243 0.014877 
0.015251 0.014876 
0.015230 0.014853 
0.015428 0.015055 
0.015211 0.014847 
0.015359 0.014977 
0.015110 0.014736 
0.015409 0.015011 
0.015318 0.014945 
0.015998 0.015641 
0.015311 0.014947 
0.015234 0.014864 
0.015652 0.015275 
0.015470 0.015101 
0.015281 0.014907 
0.015434 0.015058 
0.015072 0.014707 
0.015337 0.014947 
0.015124 0.014757 
0.015277 0.014911 
0.015377 0.015008 
0.015403 0.015018 
0.015721 0.015350 
0.016203 0.015833 
0.015093 0.014704 
0.015007 0.014634 
0.015533 0.015157 
0.015177 0.014818 
0.015197 0.014817 
0.015395 0.015024 
0.015064 0.014694 
0.015676 0.015294 
0.015101 0.014744 
0.015728 0.015355 
0.015481 0.015109 
0.015695 0.015325 
0.015125 0.014752 
0.015333 0.014972 
0.015301 0.014935 
0.015130 0.014770 
0.015208 0.014833 
0.015978 0.015601 
0.015490 0.015110 
0.015013 0.014643 
0.015285 0.014907 
0.015835 0.015469 
0.015069 0.014693 
0.015579 0.015208 
0.014929 0.014568 
0.015292 0.014912 
0.014844 0.014466 
0.015667 0.015277 
0.015237 0.014852 
0.015722 0.015350 
0.016733 0.016359 
0.015879 0.015501 
0.016150 0.015794 
0.014989 0.014610 
0.015445 0.015095 
0.015108 0.014750 
0.015596 0.015240 
0.015244 0.014879 
0.014944 0.014583 
0.015142 0.014776 
0.015408 0.015037 
0.015285 0.014919 
0.015156 0.014785 
0.015255 0.014880 
0.015178 0.014813 
0.016016 0.015647 
0.015102 0.014729 
0.015913 0.015535 
0.016071 0.015712 
0.015292 0.014933 
0.017704 0.017332 
0.017041 0.016669 
0.015282 0.014905 
0.015476 0.015118 
0.016302 0.015937 
0.015769 0.015392 
0.015645 0.015291 
0.017417 0.017036 
0.016193 0.015815 
0.015521 0.015167 
0.015440 0.015071 
0.015369 0.014997 
0.016479 0.016112 
0.015608 0.015232 
0.015111 0.014756 
0.015533 0.015164 
0.015006 0.014633 
0.016259 0.015889 
0.015800 0.015432 
0.015304 0.014932 
0.015651 0.015274 
0.015495 0.015130 
0.015701 0.015319 
0.015386 0.015017 
0.015567 0.015192 
0.015055 0.014684 
0.016073 0.015705 
0.015950 0.015571 
0.015886 0.015518 
0.015797 0.015426 
0.015565 0.015199 
0.015469 0.015097 
0.015319 0.014948 
0.015495 0.015113 
0.015594 0.015221 
0.015923 0.015553 
0.015152 0.014780 
0.015428 0.015065 
0.015792 0.015415 
0.016083 0.015709 
0.015237 0.014865 
0.015830 0.015465 
0.016130 0.015755 
0.015522 0.015156 
0.015269 0.014897 
0.015584 0.015213 
0.016743 0.016382 
0.015710 0.015339 
0.015470 0.015107 
0.015097 0.014733 
0.016180 0.015780 
0.016588 0.016226 
0.016146 0.015774 
0.015154 0.014772 
0.015703 0.015323 
0.015387 0.015022 
0.015591 0.015214 
0.015180 0.014812 
0.015470 0.015095 
0.015439 0.015073 
0.015763 0.015400 
0.015693 0.015316 
0.015058 0.014681 
0.016074 0.015706 
0.015776 0.015414 
0.015327 0.014950 
0.015323 0.014952 
0.015889 0.015512 
0.016091 0.015720 
0.016103 0.015731 
0.015544 0.015185 
0.015673 0.015309 
0.015703 0.015332 
0.015542 0.015173 
0.015285 0.014905 
0.015285 0.014916 
0.015271 0.014899 
0.015767 0.015366 
0.015355 0.014977 
0.015177 0.014782 
0.015543 0.015165 
0.015850 0.015465 
0.015947 0.015567 
0.015637 0.015257 
0.015613 0.015234 
0.015118 0.014746 
0.015079 0.014712 
0.016176 0.015799 
0.015902 0.015531 
0.015466 0.015092 
0.015542 0.015170 
0.015373 0.014997 
0.015864 0.015497 
0.015547 0.015173 
0.014811 0.014435 
0.015151 0.014784 
0.015543 0.015155 
0.015599 0.015234 
0.015253 0.014876 
0.015328 0.014945 
0.015402 0.015028 
0.016692 0.016315 
0.015347 0.014980 
0.015793 0.015426 
0.015117 0.014746 
0.015243 0.014870 
0.015612 0.015253 
0.015849 0.015480 
0.015959 0.015582 
0.015097 0.014732 
0.015640 0.015266 
0.015576 0.015211 
0.015310 0.014953 
0.015247 0.014885 
0.015925 0.015552 
0.015445 0.015071 
0.015806 0.015415 
0.014966 0.014603 
0.016115 0.015745 
0.015563 0.015198 
0.014976 0.014599 
0.015095 0.014705 
0.015855 0.015502 
0.015966 0.015595 
0.015910 0.015547 
0.015172 0.014793 
0.015656 0.015288 
0.015888 0.015501 
0.015656 0.015282 
0.015583 0.015218 
0.015563 0.015198 
0.015432 0.015067 
0.015598 0.015229 
0.016141 0.015770 
0.015893 0.015516 
0.015834 0.015458 
0.015624 0.015265 
0.015557 0.015176 
0.015479 0.015102 
0.015351 0.014993 
0.015784 0.015407 
0.015969 0.015605 
0.015722 0.015351 
0.015564 0.015202 
0.018834 0.018477 
0.015446 0.015102 
0.015583 0.015235 
0.015093 0.014748 
0.016062 0.015719 
0.015689 0.015354 
0.015547 0.015172 
0.015521 0.015152 
0.015271 0.014910 
0.015541 0.015175 
0.015287 0.014913 
0.015172 0.014800 
0.015150 0.014784 
0.015227 0.014829 
0.016039 0.015668 
0.015575 0.015196 
0.016329 0.015948 
0.015440 0.015070 
0.015999 0.015622 
0.015420 0.015046 
0.015308 0.014950 
0.015407 0.015024 
0.015539 0.015177 
0.015647 0.015278 
0.015510 0.015136 
0.015855 0.015478 
0.015225 0.014856 
0.015270 0.014890 
0.016153 0.015787 
0.015608 0.015248 
0.015184 0.014814 
0.015744 0.015367 
0.015657 0.015299 
0.016419 0.016055 
0.015253 0.014877 
0.015774 0.015410 
0.015667 0.015312 
0.015469 0.015080 
0.015250 0.014877 
0.015395 0.015039 
0.016071 0.015701 
0.015498 0.015117 
0.015777 0.015400 
0.015586 0.015213 
0.015050 0.014685 
0.015986 0.015621 
0.015872 0.015499 
0.015961 0.015593 
0.015464 0.015091 
0.015440 0.015069 
0.015488 0.015102 
0.015361 0.014995 
0.015392 0.015003 
0.015854 0.015483 
0.016059 0.015699 
0.015402 0.015040 
0.015732 0.015360 
0.016103 0.015726 
0.015355 0.014991 
0.015407 0.015036 
0.015915 0.015550 
0.015417 0.015043 
0.016619 0.016247 
0.015386 0.015015 
0.016229 0.015857 
0.015427 0.015047 
0.015289 0.014913 
0.015268 0.014887 
0.016156 0.015784 
0.015887 0.015521 
0.015577 0.015216 
0.015728 0.015344 
0.016703 0.016327 
0.015810 0.015429 
0.016044 0.015675 
0.016248 0.015852 
0.015392 0.015018 
0.015354 0.014981 
0.016070 0.015712 
0.016093 0.015710 
0.015474 0.015095 
0.015815 0.015444 
0.016254 0.015879 
0.015412 0.015049 
0.015530 0.015167 
0.016076 0.015701 
0.015459 0.015097 
0.015336 0.014964 
0.015592 0.015216 
0.015408 0.015030 
0.015714 0.015332 
0.015636 0.015269 
0.015422 0.015059 
0.015063 0.014686 
0.015615 0.015240 
0.015225 0.014869 
0.015593 0.015229 
0.015454 0.015081 
0.015363 0.015004 
0.015430 0.015066 
0.016095 0.015729 
0.016223 0.015853 
0.015138 0.014778 
0.015808 0.015435 
0.015427 0.015044 
0.015822 0.015461 
0.015431 0.015061 
0.015577 0.015204 
0.016086 0.015699 
0.015457 0.015092 
0.015738 0.015375 
0.015617 0.015240 
0.015241 0.014871 
0.015680 0.015308 
0.016045 0.015665 
0.015172 0.014792 
0.016084 0.015711 
0.015213 0.014844 
0.015633 0.015255 
0.016000 0.015606 
0.014915 0.014539 
0.015358 0.014984 
0.016009 0.015629 
0.015129 0.014750 
0.015085 0.014696 
0.015692 0.015320 
0.015368 0.015000 
0.015613 0.015240 
0.015444 0.015079 
0.015424 0.015053 
0.015409 0.015036 
0.015109 0.014736 
0.015874 0.015502 
0.015543 0.015191 
0.015757 0.015388 
0.015946 0.015572 
0.015489 0.015117 
0.015522 0.015164 
0.015845 0.015477 
0.016004 0.015632 
0.016067 0.015697 
0.015648 0.015269 
0.015374 0.015010 
0.015508 0.015134 
0.015583 0.015203 
0.015703 0.015341 
0.015537 0.015176 
0.015838 0.015474 
0.015634 0.015256 
0.015849 0.015476 
0.016148 0.015792 
0.015239 0.014880 
0.015522 0.015133 
0.015501 0.015129 
0.016007 0.015629 
0.016055 0.015685 
0.015452 0.015082 
0.015261 0.014878 
0.015558 0.015168 
0.015300 0.014929 
0.015671 0.015299 
0.016203 0.015835 
0.015385 0.015010 
0.015543 0.015165 
0.015831 0.015466 
0.015164 0.014786 
0.015696 0.015292 
0.015628 0.015252 
0.016176 0.015811 
0.016273 0.015902 
0.015474 0.015106 
0.016115 0.015751 
0.015436 0.015049 
0.015965 0.015605 
0.015804 0.015434 
0.015063 0.014692 
0.015182 0.014827 
0.015806 0.015441 
0.016004 0.015637 
0.015274 0.014921 
0.015772 0.015410 
0.015576 0.015188 
0.015899 0.015529 
0.015507 0.015142 
0.015850 0.015467 
0.015619 0.015260 
0.015947 0.015583 
0.015355 0.014982 
0.015908 0.015539 
0.015066 0.014710 
0.015624 0.015261 
0.016321 0.015955 
0.016018 0.015649 
0.015518 0.015139 
0.015607 0.015213 
0.016415 0.016033 
0.015332 0.014966 
0.015858 0.015463 
0.015838 0.015480 
0.015734 0.015371 
0.015683 0.015301 
0.016035 0.015662 
0.015209 0.014841 
0.015573 0.015210 
0.015170 0.014805 
0.015571 0.015214 
0.015271 0.014888 
0.016048 0.015668 
0.015909 0.015536 
0.015318 0.014936 
0.015632 0.015258 
0.015964 0.015584 
0.015365 0.014987 
0.015264 0.014906 
0.015285 0.014889 
0.015354 0.014997 
0.015324 0.014971 
0.015353 0.014981 
0.015128 0.014742 
0.015360 0.014982 
0.015307 0.014937 
0.016261 0.015893 
0.015556 0.015183 
0.016100 0.015717 
0.015407 0.015033 
0.015728 0.015356 
0.015290 0.014923 
0.015283 0.014905 
0.015598 0.015237 
0.015261 0.014883 
0.016100 0.015728 
0.016048 0.015686 
0.016198 0.015823 
0.016337 0.015964 
0.015284 0.014912 
0.015588 0.015223 
0.015200 0.014828 
0.016017 0.015641 
0.015324 0.014948 
0.015939 0.015563 
0.015660 0.015290 
0.015405 0.015024 
0.016289 0.015910 
0.015746 0.015369 
0.015695 0.015321 
0.015326 0.014957 
0.015540 0.015161 
0.015742 0.015363 
0.015039 0.014664 
0.015671 0.015310 
0.015690 0.015329 
0.015302 0.014939 
0.015974 0.015614 
0.016016 0.015645 
0.014951 0.014581 
0.015553 0.015184 
0.015639 0.015269 
0.015630 0.015258 
0.015960 0.015578 
0.015591 0.015224 
0.015762 0.015376 
0.015585 0.015210 
0.015948 0.015549 
0.016249 0.015901 
0.015844 0.015472 
0.014839 0.014459 
0.015442 0.015059 
0.015035 0.014662 
0.015517 0.015150 
0.015699 0.015335 
0.015656 0.015291 
0.015631 0.015259 
0.015281 0.014910 
0.015387 0.015013 
0.015527 0.015168 
0.016155 0.015777 
0.016067 0.015671 
0.015346 0.014977 
0.015305 0.014939 
0.015636 0.015261 
0.016308 0.015941 
0.015595 0.015220 
0.016174 0.015803 
0.015519 0.015156 
0.015025 0.014645 
0.016047 0.015680 
0.015812 0.015429 
0.015562 0.015188 
0.015714 0.015353 
0.015388 0.015015 
0.015355 0.014985 
0.016052 0.015683 
0.015707 0.015333 
0.015836 0.015463 
0.015830 0.015448 
0.015250 0.014874 
0.015448 0.015073 
0.015953 0.015580 
0.015174 0.014801 
0.016132 0.015739 
0.015568 0.015209 
0.015116 0.014740 
0.015905 0.015541 
0.015086 0.014718 
0.015223 0.014833 
0.015430 0.015060 
0.015606 0.015210 
0.015903 0.015541 
0.015544 0.015163 
0.015514 0.015143 
0.014908 0.014533 
0.015426 0.015065 
0.015805 0.015435 
0.015394 0.015025 
0.015665 0.015291 
0.015971 0.015618 
0.016225 0.015823 
0.015497 0.015128 
0.015811 0.015435 
0.015293 0.014922 
0.015141 0.014780 
0.015833 0.015435 
0.015724 0.015342 
0.015675 0.015302 
0.015900 0.015518 
0.015681 0.015303 
0.015780 0.015425 
0.015904 0.015527 
0.015343 0.014953 
0.015388 0.015019 
0.015978 0.015616 
0.015653 0.015276 
0.015383 0.015003 
0.015534 0.015152 
0.015419 0.015041 
0.016139 0.015744 
0.015672 0.015312 
0.015776 0.015414 
0.016374 0.016010 
0.015328 0.014953 
0.015825 0.015448 
0.015950 0.015582 
0.016342 0.015968 
0.016257 0.015900 
0.016111 0.015742 
0.015548 0.015179 
0.015543 0.015172 
0.015719 0.015352 
0.015857 0.015485 
0.015624 0.015250 
0.015856 0.015495 
0.015192 0.014802 
0.015957 0.015586 
0.015346 0.014968 
0.015778 0.015407 
0.015408 0.015044 
0.015666 0.015305 
0.016605 0.016201 
0.015798 0.015416 
0.015444 0.015073 
0.016118 0.015746 
0.016007 0.015646 
0.015463 0.015103 
0.015535 0.015157 
0.015041 0.014659 
0.015852 0.015487 
0.015536 0.015168 
0.015032 0.014642 
0.015511 0.015150 
0.015672 0.015307 
0.015587 0.015211 
0.015533 0.015162 
0.015714 0.015333 
0.015574 0.015203 
0.015340 0.014976 
0.016034 0.015662 
0.015474 0.015101 
0.014855 0.014480 
0.016356 0.015984 
0.015321 0.014949 
0.015904 0.015530 
0.016173 0.015811 
0.015744 0.015376 
0.016000 0.015594 
0.015168 0.014785 
0.015216 0.014843 
0.016251 0.015862 
0.015899 0.015512 
0.015696 0.015336 
0.016071 0.015698 
0.016370 0.016002 
0.015508 0.015146 
0.015826 0.015470 
0.015385 0.015004 
0.015455 0.015084 
0.015436 0.015053 
0.015733 0.015377 
0.015498 0.015129 
0.015629 0.015255 
0.016351 0.015978 
0.015454 0.015093 
0.016363 0.016001 
0.015301 0.014932 
0.015546 0.015175 
0.015809 0.015441 
0.015901 0.015526 
0.016130 0.015750 
0.015102 0.014731 
0.015828 0.015447 
0.015531 0.015153 
0.015500 0.015133 
0.015019 0.014650 
0.015576 0.015209 
0.015842 0.015469 
0.015632 0.015251 
0.015976 0.015607 
0.015657 0.015285 
0.015987 0.015619 
0.015498 0.015134 
0.016242 0.015848 
0.015788 0.015398 
0.016222 0.015842 
0.015637 0.015264 
0.015419 0.015040 
0.015246 0.014883 
0.015706 0.015335 
0.015292 0.014913 
0.015535 0.015168 
0.015539 0.015176 
0.015320 0.014950 
0.016282 0.015904 
0.015484 0.015124 
0.015507 0.015134 
0.016113 0.015725 
0.015611 0.015251 
0.015541 0.015172 
0.015286 0.014894 
0.015470 0.015069 
0.015479 0.015115 
0.015138 0.014774 
0.015292 0.014913 
0.015577 0.015206 
0.015213 0.014839 
0.015471 0.015096 
0.015558 0.015180 
0.015532 0.015159 
0.015575 0.015204 
0.015453 0.015081 
0.014996 0.014619 
0.015832 0.015469 
0.015833 0.015460 
0.015599 0.015239 
0.015289 0.014919 
0.015758 0.015383 
0.015442 0.015082 
0.015520 0.015137 
0.015171 0.014793 
0.015703 0.015348 
0.015654 0.015283 
0.015910 0.015537 
0.015841 0.015473 
0.015753 0.015354 
0.016382 0.016011 
0.015356 0.014980 
0.015440 0.015061 
0.015329 0.014961 
0.016446 0.016040 
0.015697 0.015330 
0.015122 0.014748 
0.015525 0.015160 
0.015501 0.015123 
0.015578 0.015204 
0.015052 0.014683 
0.015281 0.014911 
0.015916 0.015550 
0.015610 0.015247 
0.015280 0.014908 
0.015218 0.014845 
0.015383 0.015010 
0.015304 0.014929 
0.015697 0.015324 
0.016290 0.015892 
0.015966 0.015584 
0.016385 0.016008 
0.015404 0.015033 
0.015754 0.015375 
0.015494 0.015113 
0.015726 0.015353 
0.015353 0.014971 
0.015619 0.015220 
0.015906 0.015502 
0.015572 0.015209 
0.015263 0.014906 
0.015178 0.014811 
0.016009 0.015639 
0.015399 0.015027 
0.016013 0.015653 
0.015257 0.014889 
0.015362 0.014962 
0.015386 0.015005 
0.015614 0.015237 
0.015956 0.015569 
0.016410 0.016030 
0.014998 0.014617 
0.015317 0.014939 
0.015766 0.015390 
0.015480 0.015110 
0.015460 0.015101 
0.015298 0.014928 
0.015529 0.015159 
0.015176 0.014799 
0.015794 0.015431 
0.015829 0.015463 
0.015890 0.015515 
0.015558 0.015204 
0.015499 0.015139 
0.015184 0.014822 
0.015785 0.015412 
0.015890 0.015520 
0.015875 0.015512 
0.015342 0.014979 
0.015954 0.015585 
0.016411 0.016045 
0.015653 0.015281 
0.015339 0.014981 
0.016061 0.015694 
0.015895 0.015517 
0.015312 0.014943 
0.015567 0.015187 
0.015932 0.015563 
0.015677 0.015316 
0.015209 0.014823 
0.015454 0.015082 
0.015500 0.015131 
0.015309 0.014930 
0.015041 0.014664 
0.015531 0.015164 
0.015314 0.014948 
0.015242 0.014895 
0.015565 0.015209 
0.016116 0.015740 
0.015950 0.015590 
0.015369 0.014999 
0.015426 0.015035 
0.015774 0.015403 
0.015683 0.015304 
0.015074 0.014710 
0.015446 0.015089 
0.015974 0.015583 
0.015805 0.015446 
0.015632 0.015254 
0.015822 0.015446 
0.015596 0.015218 
0.015689 0.015315 
0.015934 0.015571 
0.015717 0.015341 
0.015775 0.015399 
0.015463 0.015096 
0.015636 0.015259 
0.015478 0.015103 
0.015463 0.015092 
0.015241 0.014876 
0.015808 0.015448 
0.015678 0.015305 
0.015152 0.014781 
0.015909 0.015511 
0.015278 0.014896 
0.015546 0.015164 
0.015393 0.015021 
0.016022 0.015625 
0.015453 0.015068 
0.015747 0.015372 
0.015696 0.015330 
0.015651 0.015276 
0.015777 0.015384 
0.015627 0.015243 
0.015429 0.015049 
0.015501 0.015143 
0.015898 0.015528 
0.015619 0.015241 
0.015624 0.015255 
0.016390 0.016020 
0.015234 0.014876 
0.015523 0.015153 
0.015685 0.015324 
0.015723 0.015348 
0.015400 0.015034 
0.015792 0.015402 
0.016206 0.015835 
0.015383 0.015009 
0.015300 0.014922 
0.015740 0.015369 
0.016294 0.015923 
0.015636 0.015261 
0.016063 0.015694 
0.015379 0.015010 
0.015891 0.015526 
0.015842 0.015472 
0.015345 0.014962 
0.015371 0.015006 
0.015293 0.014915 
0.015541 0.015171 
0.015371 0.015005 
0.015754 0.015382 
0.015666 0.015292 
0.015959 0.015581 
0.015662 0.015293 
0.015520 0.015137 
0.016506 0.016120 
0.015479 0.015103 
0.015332 0.014973 
0.015900 0.015523 
0.015882 0.015487 
0.015478 0.015108 
0.015261 0.014881 
0.015489 0.015133 
0.015421 0.015049 
0.015801 0.015420 
0.015570 0.015206 
0.016048 0.015687 
0.015694 0.015322 
0.015295 0.014915 
0.015704 0.015338 
0.015536 0.015146 
0.015566 0.015206 
0.015373 0.015004 
0.015780 0.015405 
0.015440 0.015064 
0.015490 0.015118 
0.015661 0.015303 
0.015557 0.015197 
0.015215 0.014835 
0.015718 0.015356 
0.015502 0.015131 
0.015456 0.015097 
0.015955 0.015575 
0.015361 0.014983 
0.015938 0.015568 
0.015519 0.015159 
0.016129 0.015755 
0.015269 0.014885 
0.015505 0.015142 
0.016084 0.015695 
0.015731 0.015356 
0.015524 0.015158 
0.016067 0.015702 
0.015509 0.015120 
0.015653 0.015292 
0.015362 0.014993 
0.014963 0.014591 
0.016070 0.015713 
0.015478 0.015104 
0.015346 0.014981 
0.015475 0.015107 
0.015446 0.015062 
0.015631 0.015247 
0.015325 0.014956 
0.015826 0.015451 
0.016046 0.015668 
0.015502 0.015136 
0.015340 0.014971 
0.015676 0.015313 
0.015701 0.015332 
0.015781 0.015403 
0.015746 0.015364 
0.015804 0.015430 
0.016369 0.016000 
0.015120 0.014729 
0.015896 0.015532 
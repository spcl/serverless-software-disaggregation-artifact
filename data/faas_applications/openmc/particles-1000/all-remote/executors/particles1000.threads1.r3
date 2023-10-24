[02:49:43:933107] [T 703168] [info] Executing serverless-rdma executor with 1 cores! Waiting for client at 148.187.105.52:10005 
[02:49:43:934505] [T 703168] [info] Configuration options: expecting function size 3291512, function payloads 3410000, receive WCs buffer size 32, max inline data 0, hot polling timeout 0 
[02:49:43:934509] [T 703168] [info] My manager runs at 148.187.105.51:10000, its secret is 4660, the accounting buffer is at 140737354063872 with rkey 99700 
[02:49:43:955474] [T 703169] [info] Thread 0 Established connection to the manager! 
[02:49:43:960244] [T 703169] [info] Thread 0 Established connection to client! 
[02:49:43:975455] [T 703169] [info] Thread 0 begins work with timeout 0 
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
       Date/Time | 2023-04-07 02:49:43
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
0.075291 0.075265 
0.080985 0.080967 
0.081381 0.081364 
 WARNING: Particle 996 had a negative distance to a lattice boundary
 WARNING: Particle 997 had a negative distance to a lattice boundary
0.089762 0.089747 
0.081767 0.081748 
0.084977 0.084963 
 WARNING: Particle 999 had a negative distance to a lattice boundary
0.085005 0.084990 
0.082930 0.082914 
0.081852 0.081836 
0.079694 0.079680 
0.080953 0.080938 
0.082989 0.082974 
0.082654 0.082638 
0.082018 0.082004 
0.081782 0.081768 
0.080587 0.080574 
0.082305 0.082289 
0.080360 0.080345 
0.080565 0.080549 
0.081945 0.081931 
0.082277 0.082261 
0.080951 0.080939 
0.083062 0.083047 
0.081674 0.081660 
0.082887 0.082873 
0.082572 0.082558 
0.083888 0.083872 
0.082305 0.082291 
0.080701 0.080686 
0.082593 0.082577 
0.082089 0.082073 
0.082204 0.082188 
0.082555 0.082539 
0.084427 0.084413 
0.080768 0.080753 
0.081510 0.081496 
0.083427 0.083412 
0.082803 0.082789 
0.081116 0.081100 
0.080728 0.080715 
0.081975 0.081960 
0.080409 0.080395 
0.082785 0.082771 
0.080400 0.080386 
0.085181 0.085167 
0.081859 0.081846 
0.082411 0.082397 
0.080559 0.080546 
0.081819 0.081804 
0.081319 0.081305 
0.082270 0.082255 
0.081184 0.081169 
0.083226 0.083211 
0.081068 0.081055 
0.080503 0.080489 
0.083307 0.083291 
0.083209 0.083194 
0.081959 0.081945 
0.081967 0.081950 
0.082439 0.082426 
0.080411 0.080395 
0.084000 0.083985 
0.082292 0.082275 
0.082042 0.082029 
0.080073 0.080057 
0.080673 0.080660 
0.082884 0.082870 
0.081344 0.081331 
0.080971 0.080956 
0.080144 0.080129 
0.082992 0.082977 
0.082468 0.082454 
0.083115 0.083100 
0.080893 0.080880 
0.082144 0.082130 
0.079486 0.079473 
0.079630 0.079615 
0.080262 0.080249 
0.084344 0.084329 
0.080584 0.080570 
0.082325 0.082309 
0.080642 0.080628 
0.083741 0.083725 
0.082818 0.082804 
0.081113 0.081098 
0.080490 0.080476 
0.083884 0.083868 
0.081506 0.081491 
0.079598 0.079584 
0.083027 0.083013 
0.084568 0.084552 
0.082645 0.082631 
0.082936 0.082921 
0.081684 0.081670 
0.081780 0.081764 
0.081933 0.081919 
0.082035 0.082020 
0.083541 0.083527 
0.082250 0.082235 
0.082436 0.082423 
0.081434 0.081418 
0.081953 0.081938 
0.083808 0.083794 
0.082579 0.082566 
0.082290 0.082275 
0.081574 0.081560 
0.081090 0.081076 
0.084117 0.084103 
0.081547 0.081533 
0.084303 0.084290 
0.082818 0.082802 
0.081870 0.081855 
0.081395 0.081380 
0.080928 0.080914 
0.082621 0.082605 
0.079365 0.079351 
0.082662 0.082647 
0.082408 0.082394 
0.083138 0.083123 
0.084080 0.084067 
0.082353 0.082339 
0.082854 0.082840 
0.080021 0.080006 
0.080539 0.080526 
0.080795 0.080781 
0.079870 0.079856 
0.081313 0.081297 
0.082350 0.082334 
0.081784 0.081768 
0.081235 0.081221 
0.081188 0.081174 
0.082082 0.082069 
0.081299 0.081282 
0.080358 0.080345 
0.085018 0.085004 
0.081831 0.081816 
0.081684 0.081670 
0.079868 0.079854 
0.079883 0.079868 
0.083898 0.083885 
0.082226 0.082210 
0.079382 0.079368 
0.081734 0.081719 
0.080488 0.080475 
0.080901 0.080885 
0.081653 0.081639 
0.081124 0.081109 
0.080226 0.080213 
0.080988 0.080972 
0.083347 0.083333 
0.085076 0.085062 
0.081748 0.081735 
0.080255 0.080240 
0.080946 0.080932 
0.081626 0.081611 
0.083281 0.083268 
0.082890 0.082875 
0.083545 0.083532 
0.081887 0.081872 
0.082093 0.082080 
0.081820 0.081805 
0.082284 0.082270 
0.082746 0.082730 
0.081885 0.081871 
0.081405 0.081390 
0.081061 0.081048 
0.081157 0.081143 
0.079678 0.079665 
0.079994 0.079979 
0.081796 0.081781 
0.082990 0.082976 
0.083021 0.083007 
0.081817 0.081801 
0.083472 0.083458 
0.082444 0.082428 
0.082828 0.082814 
0.082796 0.082780 
0.083719 0.083705 
0.078686 0.078671 
0.081339 0.081325 
0.083476 0.083460 
0.080578 0.080564 
0.082481 0.082465 
0.083843 0.083828 
0.082025 0.082010 
0.081044 0.081030 
0.081355 0.081340 
0.082077 0.082063 
0.081705 0.081689 
0.080339 0.080325 
0.081734 0.081719 
0.081187 0.081174 
0.082835 0.082820 
0.080070 0.080057 
0.081182 0.081166 
0.082222 0.082210 
0.083186 0.083171 
0.082817 0.082803 
0.081656 0.081640 
0.083946 0.083933 
0.080724 0.080708 
0.083200 0.083187 
0.082542 0.082526 
0.080832 0.080819 
0.080269 0.080255 
0.081158 0.081143 
0.083196 0.083182 
0.081486 0.081472 
0.083200 0.083185 
0.083135 0.083121 
0.082851 0.082836 
0.081712 0.081699 
0.082455 0.082439 
0.079923 0.079908 
0.082273 0.082257 
0.081464 0.081450 
0.082262 0.082246 
0.082812 0.082798 
0.082333 0.082317 
0.081985 0.081972 
0.081603 0.081589 
0.080200 0.080187 
0.081313 0.081298 
0.082712 0.082697 
0.080929 0.080915 
0.081347 0.081334 
0.082474 0.082458 
0.084008 0.083993 
0.083252 0.083238 
0.082416 0.082401 
0.080193 0.080177 
0.083523 0.083509 
0.084013 0.083995 
0.080451 0.080438 
0.080398 0.080381 
0.081700 0.081684 
0.081303 0.081289 
0.079624 0.079610 
0.080521 0.080505 
0.081998 0.081985 
0.080358 0.080343 
0.082934 0.082920 
0.083950 0.083936 
0.085132 0.085118 
0.081615 0.081601 
0.083126 0.083112 
0.081641 0.081626 
0.082813 0.082800 
0.079690 0.079676 
0.081722 0.081708 
0.082405 0.082391 
0.079783 0.079770 
0.082186 0.082170 
0.081841 0.081828 
0.080600 0.080585 
0.084406 0.084392 
0.080946 0.080930 
0.084937 0.084925 
0.080125 0.080110 
0.081303 0.081290 
0.081125 0.081109 
0.081756 0.081741 
0.080156 0.080141 
0.080935 0.080921 
0.082986 0.082970 
0.081534 0.081521 
0.081560 0.081546 
0.082724 0.082711 
0.084297 0.084283 
0.081161 0.081146 
0.081965 0.081949 
0.081470 0.081456 
0.083015 0.082999 
0.080338 0.080325 
0.083021 0.083005 
0.082858 0.082844 
0.084663 0.084647 
0.082335 0.082321 
0.080985 0.080969 
0.082625 0.082611 
0.079997 0.079981 
0.079688 0.079675 
0.082122 0.082108 
0.080948 0.080934 
0.083202 0.083186 
0.082652 0.082638 
0.081964 0.081947 
0.083277 0.083263 
0.081320 0.081304 
0.081564 0.081550 
0.083224 0.083207 
0.082497 0.082484 
0.081402 0.081386 
0.083253 0.083240 
0.081687 0.081672 
0.081314 0.081301 
0.082666 0.082650 
0.083458 0.083444 
0.081908 0.081893 
0.081442 0.081429 
0.083221 0.083207 
0.080555 0.080541 
0.081446 0.081430 
0.081284 0.081270 
0.080491 0.080476 
0.081097 0.081083 
0.080875 0.080860 
0.079265 0.079252 
0.082498 0.082483 
0.080482 0.080468 
0.080908 0.080893 
0.080713 0.080699 
0.082837 0.082822 
0.082503 0.082489 
0.082361 0.082346 
0.081835 0.081822 
0.081865 0.081850 
0.083233 0.083220 
0.082964 0.082948 
0.081633 0.081621 
0.082587 0.082572 
0.082094 0.082080 
0.081391 0.081377 
0.081990 0.081976 
0.080317 0.080302 
0.082656 0.082642 
0.079639 0.079624 
0.082980 0.082966 
0.083114 0.083100 
0.080282 0.080268 
0.081331 0.081317 
0.082544 0.082530 
0.080409 0.080394 
0.082068 0.082056 
0.082161 0.082146 
0.083666 0.083652 
0.082716 0.082701 
0.080767 0.080754 
0.081955 0.081941 
0.083097 0.083084 
0.081787 0.081772 
0.081826 0.081812 
0.083250 0.083235 
0.081869 0.081855 
0.082155 0.082139 
0.083361 0.083349 
0.082933 0.082918 
0.081579 0.081566 
0.083318 0.083302 
0.082113 0.082100 
0.083798 0.083783 
0.083523 0.083508 
0.082546 0.082530 
0.083411 0.083397 
0.080547 0.080533 
0.082555 0.082543 
0.082523 0.082507 
0.084600 0.084584 
0.080810 0.080795 
0.082524 0.082511 
0.082669 0.082654 
0.080687 0.080674 
0.084261 0.084245 
0.080447 0.080432 
0.082945 0.082930 
0.082341 0.082327 
0.081897 0.081881 
0.081121 0.081106 
0.083903 0.083887 
0.083596 0.083583 
0.083696 0.083681 
0.081429 0.081415 
0.083779 0.083763 
0.080310 0.080297 
0.083529 0.083515 
0.080221 0.080208 
0.082206 0.082190 
0.082821 0.082807 
0.082999 0.082982 
0.080286 0.080272 
0.082465 0.082449 
0.082663 0.082648 
0.081961 0.081945 
0.083390 0.083376 
0.082426 0.082411 
0.081537 0.081524 
0.079868 0.079855 
0.082070 0.082057 
0.082010 0.081994 
0.079481 0.079466 
0.080531 0.080515 
0.083255 0.083241 
0.084230 0.084214 
0.082040 0.082027 
0.082725 0.082710 
0.080136 0.080123 
0.081702 0.081686 
0.081069 0.081053 
0.080101 0.080085 
0.081241 0.081228 
0.082364 0.082349 
0.082156 0.082142 
0.084378 0.084361 
0.082759 0.082744 
0.081990 0.081976 
0.082426 0.082411 
0.083199 0.083184 
0.082346 0.082333 
0.081001 0.080984 
0.082616 0.082602 
0.081982 0.081966 
0.081694 0.081681 
0.083046 0.083031 
0.080892 0.080879 
0.082591 0.082577 
0.079902 0.079888 
0.082556 0.082542 
0.082098 0.082084 
0.082676 0.082660 
0.082240 0.082227 
0.083115 0.083099 
0.081980 0.081966 
0.081879 0.081864 
0.083537 0.083522 
0.080901 0.080887 
0.083235 0.083222 
0.082786 0.082772 
0.082220 0.082206 
0.082833 0.082818 
0.083130 0.083116 
0.084357 0.084341 
0.081444 0.081431 
0.082190 0.082175 
0.083352 0.083338 
0.079928 0.079914 
0.080932 0.080919 
0.079366 0.079351 
0.083609 0.083594 
0.081521 0.081504 
0.085287 0.085272 
0.082259 0.082243 
0.081358 0.081343 
0.081857 0.081842 
0.082340 0.082326 
0.082565 0.082550 
0.082423 0.082410 
0.081804 0.081789 
0.081264 0.081249 
0.081808 0.081793 
0.081955 0.081943 
0.083662 0.083642 
0.083611 0.083596 
0.081281 0.081266 
0.082972 0.082958 
0.083772 0.083757 
0.082408 0.082395 
0.081633 0.081617 
0.082096 0.082083 
0.082611 0.082596 
0.082393 0.082380 
0.080687 0.080671 
0.082189 0.082176 
0.084207 0.084193 
0.083819 0.083805 
0.083010 0.082995 
0.082476 0.082463 
0.081304 0.081290 
0.083546 0.083532 
0.081215 0.081200 
0.081486 0.081470 
0.081486 0.081471 
0.082210 0.082196 
0.082230 0.082216 
0.083406 0.083392 
0.080127 0.080112 
0.081033 0.081019 
0.080880 0.080865 
0.080982 0.080968 
0.081511 0.081493 
0.081082 0.081069 
0.080855 0.080840 
0.082068 0.082055 
0.082989 0.082973 
0.084069 0.084055 
0.082492 0.082477 
0.080527 0.080512 
0.083559 0.083543 
0.081820 0.081806 
0.082910 0.082893 
0.080662 0.080649 
0.082209 0.082194 
0.081741 0.081728 
0.082075 0.082060 
0.081817 0.081804 
0.082828 0.082813 
0.081649 0.081636 
0.083011 0.082996 
0.083794 0.083782 
0.082966 0.082950 
0.082985 0.082972 
0.082294 0.082279 
0.082765 0.082752 
0.082358 0.082343 
0.082895 0.082881 
0.081228 0.081213 
0.081573 0.081560 
0.080895 0.080880 
0.082223 0.082209 
0.081862 0.081848 
0.080933 0.080919 
0.084653 0.084637 
0.082277 0.082262 
0.079918 0.079903 
0.082265 0.082252 
0.082507 0.082493 
0.081597 0.081583 
0.083838 0.083823 
0.084368 0.084353 
0.082669 0.082652 
0.082991 0.082978 
0.080791 0.080774 
0.079984 0.079971 
0.081087 0.081073 
0.080355 0.080340 
0.083397 0.083382 
0.080673 0.080658 
0.081042 0.081026 
0.082546 0.082532 
0.081826 0.081810 
0.082159 0.082144 
0.083574 0.083560 
0.084688 0.084674 
0.082222 0.082206 
0.080332 0.080318 
0.080808 0.080793 
0.082431 0.082417 
0.084637 0.084622 
0.082796 0.082783 
0.082218 0.082203 
0.083383 0.083369 
0.083559 0.083542 
0.081296 0.081284 
0.083163 0.083148 
0.082433 0.082418 
0.081314 0.081298 
0.082918 0.082904 
0.082609 0.082593 
0.079405 0.079392 
0.080675 0.080659 
0.082000 0.081987 
0.080979 0.080963 
0.080647 0.080635 
0.081774 0.081760 
0.080237 0.080222 
0.082105 0.082089 
0.081719 0.081706 
0.080287 0.080273 
0.083154 0.083141 
0.084065 0.084049 
0.081322 0.081310 
0.080981 0.080966 
0.082340 0.082326 
0.082950 0.082935 
0.084086 0.084073 
0.081144 0.081129 
0.080788 0.080775 
0.081832 0.081817 
0.082636 0.082621 
0.082726 0.082709 
0.084431 0.084417 
0.082509 0.082493 
0.080763 0.080750 
0.081727 0.081713 
0.082692 0.082678 
0.083827 0.083813 
0.081963 0.081951 
0.082749 0.082733 
0.081300 0.081286 
0.082267 0.082252 
0.085292 0.085278 
0.081747 0.081730 
0.081450 0.081436 
0.083087 0.083073 
0.081693 0.081680 
0.081509 0.081494 
0.082343 0.082329 
0.083268 0.083252 
0.083059 0.083045 
0.081486 0.081471 
0.082346 0.082332 
0.081549 0.081533 
0.082052 0.082039 
0.082491 0.082476 
0.082114 0.082101 
0.081558 0.081543 
0.082754 0.082741 
0.083486 0.083470 
0.082712 0.082693 
0.083361 0.083345 
0.079979 0.079966 
0.082557 0.082544 
0.083502 0.083488 
0.081672 0.081657 
0.081627 0.081612 
0.083364 0.083347 
0.084235 0.084221 
0.080296 0.080282 
0.082757 0.082742 
0.083626 0.083609 
0.082435 0.082423 
0.081458 0.081444 
0.080824 0.080809 
0.081594 0.081579 
0.078683 0.078670 
0.082045 0.082031 
0.081786 0.081773 
0.081837 0.081822 
0.084031 0.084018 
0.082282 0.082266 
0.082855 0.082842 
0.080908 0.080892 
0.081048 0.081035 
0.082302 0.082287 
0.080432 0.080418 
0.082454 0.082438 
0.085353 0.085340 
0.082744 0.082728 
0.082844 0.082831 
0.082075 0.082060 
0.082143 0.082130 
0.080684 0.080668 
0.081890 0.081876 
0.081188 0.081174 
0.083105 0.083090 
0.081036 0.081020 
0.083246 0.083233 
0.080448 0.080432 
0.081103 0.081088 
0.082304 0.082289 
0.082064 0.082050 
0.082800 0.082784 
0.082690 0.082676 
0.080664 0.080649 
0.082585 0.082571 
0.079560 0.079544 
0.081500 0.081487 
0.082611 0.082594 
0.082602 0.082589 
0.084166 0.084151 
0.082859 0.082844 
0.079638 0.079623 
0.084685 0.084672 
0.082632 0.082617 
0.082378 0.082364 
0.082013 0.081997 
0.082947 0.082934 
0.083047 0.083032 
0.080065 0.080051 
0.083587 0.083572 
0.082040 0.082026 
0.082711 0.082696 
0.082808 0.082794 
0.082161 0.082145 
0.084153 0.084140 
0.084250 0.084235 
0.080990 0.080975 
0.080066 0.080051 
0.082955 0.082941 
0.081878 0.081863 
0.084284 0.084269 
0.079847 0.079831 
0.081184 0.081171 
0.080698 0.080684 
0.081095 0.081082 
0.082931 0.082916 
0.081955 0.081942 
0.080976 0.080962 
0.081252 0.081238 
0.083247 0.083233 
0.082076 0.082063 
0.082100 0.082085 
0.082225 0.082211 
0.083139 0.083124 
0.081572 0.081557 
0.081314 0.081298 
0.081491 0.081478 
0.081974 0.081959 
0.082672 0.082658 
0.083977 0.083962 
0.081959 0.081942 
0.082939 0.082924 
0.082081 0.082067 
0.081129 0.081114 
0.083482 0.083468 
0.081452 0.081435 
0.083173 0.083159 
0.080787 0.080772 
0.083270 0.083256 
0.082101 0.082087 
0.082189 0.082176 
0.080496 0.080482 
0.082597 0.082584 
0.081834 0.081819 
0.084491 0.084477 
0.082741 0.082724 
0.081655 0.081641 
0.081994 0.081979 
0.083470 0.083455 
0.082685 0.082670 
0.084331 0.084317 
0.084590 0.084576 
0.081282 0.081269 
0.080663 0.080647 
0.081381 0.081368 
0.083183 0.083167 
0.081972 0.081958 
0.081136 0.081121 
0.082587 0.082572 
0.081557 0.081542 
0.083270 0.083255 
0.080735 0.080721 
0.082917 0.082903 
0.081133 0.081118 
0.082047 0.082034 
0.083002 0.082987 
0.085784 0.085771 
0.082068 0.082053 
0.083407 0.083392 
0.082375 0.082360 
0.083244 0.083230 
0.080560 0.080544 
0.083541 0.083527 
0.082208 0.082194 
0.082052 0.082038 
0.083709 0.083694 
0.080571 0.080558 
0.079794 0.079779 
0.079678 0.079665 
0.082104 0.082089 
0.083332 0.083319 
0.081857 0.081841 
0.082704 0.082691 
0.081589 0.081573 
0.081583 0.081570 
0.081602 0.081588 
0.081743 0.081729 
0.082580 0.082564 
0.082457 0.082443 
0.083837 0.083821 
0.083363 0.083350 
0.081180 0.081166 
0.080970 0.080957 
0.081275 0.081259 
0.080895 0.080881 
0.082272 0.082258 
0.080584 0.080565 
0.080903 0.080888 
0.082535 0.082522 
0.080338 0.080323 
0.084135 0.084117 
0.080222 0.080206 
0.083466 0.083452 
0.082367 0.082353 
0.084451 0.084438 
0.080847 0.080832 
0.082255 0.082241 
0.082488 0.082474 
0.081722 0.081709 
0.081732 0.081717 
0.083534 0.083519 
0.081747 0.081732 
0.082845 0.082831 
0.081273 0.081259 
0.081111 0.081096 
0.082783 0.082767 
0.081810 0.081797 
0.079233 0.079218 
0.081161 0.081147 
0.081289 0.081274 
0.081075 0.081061 
0.084327 0.084313 
0.080491 0.080477 
0.081882 0.081867 
0.080842 0.080828 
0.081840 0.081825 
0.081054 0.081041 
0.081290 0.081276 
0.082558 0.082544 
0.083062 0.083046 
0.082128 0.082114 
0.080128 0.080113 
0.082157 0.082144 
0.081069 0.081055 
0.084687 0.084674 
0.082331 0.082315 
0.080934 0.080921 
0.081447 0.081431 
0.082739 0.082726 
0.081236 0.081222 
0.082449 0.082434 
0.083307 0.083292 
0.083549 0.083536 
0.082683 0.082668 
0.081182 0.081167 
0.080835 0.080820 
0.084609 0.084596 
0.081375 0.081360 
0.081928 0.081915 
0.082886 0.082871 
0.081109 0.081093 
0.081001 0.080986 
0.082716 0.082703 
0.081598 0.081585 
0.081635 0.081620 
0.081725 0.081709 
0.080366 0.080352 
0.082540 0.082526 
0.082588 0.082575 
0.081018 0.081004 
0.080289 0.080275 
0.081877 0.081862 
0.081514 0.081500 
0.081593 0.081578 
0.080892 0.080879 
0.082755 0.082740 
0.081070 0.081056 
0.079791 0.079776 
0.080311 0.080298 
0.082124 0.082108 
0.082955 0.082941 
0.082906 0.082891 
0.081471 0.081457 
0.080212 0.080196 
0.083454 0.083440 
0.083603 0.083588 
0.080994 0.080980 
0.080755 0.080736 
0.082591 0.082578 
0.081266 0.081250 
0.082153 0.082138 
0.081770 0.081753 
0.082170 0.082157 
0.082168 0.082152 
0.082986 0.082971 
0.082412 0.082396 
0.084137 0.084123 
0.082149 0.082134 
0.082307 0.082294 
0.081308 0.081293 
0.081401 0.081387 
0.082279 0.082263 
0.082027 0.082013 
0.083567 0.083551 
0.083452 0.083439 
0.079953 0.079938 
0.081762 0.081748 
0.082709 0.082694 
0.081142 0.081128 
0.082121 0.082107 
0.081556 0.081542 
0.082019 0.082005 
0.083062 0.083048 
0.085694 0.085680 
0.083705 0.083692 
0.083010 0.082995 
0.080849 0.080831 
0.082706 0.082692 
0.083548 0.083534 
0.081357 0.081341 
0.080524 0.080511 
0.083859 0.083845 
0.080889 0.080875 
0.082566 0.082551 
0.082237 0.082224 
0.080967 0.080953 
0.081497 0.081484 
0.080356 0.080340 
0.082900 0.082887 
0.083089 0.083072 
0.082590 0.082576 
0.082621 0.082606 
0.082186 0.082173 
0.082284 0.082270 
0.084109 0.084096 
0.080256 0.080241 
0.082735 0.082722 
0.081004 0.080989 
0.082188 0.082173 
0.081984 0.081969 
0.082017 0.082003 
0.083365 0.083350 
0.084099 0.084087 
0.080917 0.080900 
0.081865 0.081852 
0.080702 0.080686 
0.082830 0.082816 
0.082476 0.082460 
0.083006 0.082992 
0.082040 0.082025 
0.081588 0.081574 
0.081473 0.081458 
0.083178 0.083165 
0.080394 0.080378 
0.083002 0.082988 
0.080934 0.080917 
0.079655 0.079640 
0.082175 0.082160 
0.082806 0.082792 
0.080816 0.080801 
0.082635 0.082621 
0.083988 0.083971 
0.082749 0.082736 
0.082994 0.082979 
0.081993 0.081981 
0.081563 0.081548 
0.082965 0.082952 
0.080949 0.080934 
0.081965 0.081952 
0.083732 0.083719 
0.081821 0.081807 
0.081752 0.081738 
0.082352 0.082337 
0.081613 0.081598 
0.083508 0.083496 
0.083079 0.083064 
0.082509 0.082496 
0.083698 0.083682 
0.084097 0.084083 
0.082084 0.082068 
0.080467 0.080453 
0.081082 0.081066 
0.082339 0.082324 
0.081851 0.081836 
0.080936 0.080922 
0.083536 0.083521 
0.083061 0.083048 
0.081067 0.081053 
0.081300 0.081286 
0.082324 0.082308 
0.082884 0.082870 
0.081010 0.080993 
0.081552 0.081538 
0.081055 0.081040 
0.083227 0.083213 
0.082222 0.082206 
0.079473 0.079459 
0.080579 0.080563 
0.081425 0.081411 
0.082192 0.082177 
0.081788 0.081773 
0.082240 0.082226 
0.080617 0.080604 
0.080722 0.080706 
0.080003 0.079988 
0.083883 0.083867 
0.083944 0.083929 
0.082819 0.082804 
0.081656 0.081643 
0.080841 0.080825 
0.081267 0.081253 
0.081918 0.081903 
0.081893 0.081880 
0.082099 0.082085 
0.080403 0.080391 
0.081587 0.081570 
0.083314 0.083300 
0.082957 0.082943 
0.083454 0.083441 
0.081807 0.081793 
0.083769 0.083754 
0.084332 0.084317 
0.082729 0.082716 
0.082236 0.082222 
0.080685 0.080672 
0.083400 0.083385 
0.081967 0.081953 
0.081934 0.081919 
0.083877 0.083864 
0.081062 0.081047 
0.083250 0.083235 
0.081648 0.081632 
0.082066 0.082053 
0.082371 0.082356 
0.082502 0.082486 
0.083247 0.083231 
0.081587 0.081571 
0.081800 0.081785 
0.079982 0.079969 
0.082540 0.082525 
0.081361 0.081348 
0.082864 0.082848 
0.081898 0.081884 
0.081192 0.081177 
0.082618 0.082605 
0.084788 0.084774 
0.082272 0.082258 
0.082809 0.082794 
0.081128 0.081114 
0.082427 0.082413 
0.082829 0.082815 
0.082500 0.082484 
0.082019 0.082005 
0.081516 0.081501 
0.080720 0.080705 
0.082460 0.082445 
0.083087 0.083074 
0.083176 0.083160 
0.082603 0.082590 
0.083263 0.083247 
0.082789 0.082776 
0.084095 0.084080 
0.079740 0.079726 
0.081250 0.081235 
0.080481 0.080466 
0.080930 0.080916 
0.081458 0.081445 
0.080882 0.080867 
0.082258 0.082245 
0.081906 0.081890 
0.081104 0.081091 
0.084041 0.084025 
0.080780 0.080767 
0.081596 0.081581 
0.081032 0.081018 
0.080950 0.080933 
0.083211 0.083197 
0.078932 0.078917 
0.079860 0.079847 
0.083118 0.083103 
0.083291 0.083278 
0.082817 0.082799 
0.082343 0.082329 
0.081134 0.081119 
0.081894 0.081881 
0.081742 0.081726 
0.079975 0.079962 
0.081022 0.081006 
0.083494 0.083479 
0.084250 0.084234 
0.081982 0.081968 
0.083041 0.083026 
0.083590 0.083578 
0.082839 0.082824 
0.080211 0.080198 
0.084273 0.084259 
0.081418 0.081406 
0.083139 0.083123 
0.082956 0.082943 
0.081788 0.081772 
0.084718 0.084704 
0.082216 0.082200 
0.082280 0.082265 
0.081901 0.081886 
0.081380 0.081367 
0.081507 0.081492 
0.080829 0.080816 
0.079991 0.079976 
0.081096 0.081082 
0.082782 0.082763 
0.081899 0.081886 
0.082253 0.082232 
0.080381 0.080367 
0.082736 0.082722 
0.080690 0.080676 
0.081123 0.081109 
0.081336 0.081324 
0.083770 0.083754 
0.081907 0.081894 
0.083269 0.083254 
0.083444 0.083430 
0.082343 0.082329 
0.080438 0.080425 
0.082363 0.082348 
0.084522 0.084507 
0.082304 0.082288 
0.083213 0.083199 
0.083365 0.083349 
0.082396 0.082381 
0.083233 0.083217 
0.080672 0.080658 
0.081233 0.081217 
0.083823 0.083811 
0.082579 0.082563 
0.082107 0.082093 
0.081918 0.081903 
0.081246 0.081233 
0.082466 0.082450 
0.083550 0.083537 
0.083432 0.083415 
0.081147 0.081133 
0.083168 0.083152 
0.081838 0.081824 
0.084033 0.084018 
0.085301 0.085287 
0.083399 0.083384 
0.083070 0.083056 
0.083356 0.083338 
0.080692 0.080679 
0.080879 0.080864 
0.081138 0.081124 
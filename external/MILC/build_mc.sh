#!/bin/bash

module switch daint-gpu daint-mc
module load daint-mc
cp -r milc_qcd-7.8.1 milc_qcd-7.8.1-mc
cp Makefile milc_qcd-7.8.1-mc
cp Makefile milc_qcd-7.8.1-mc/ks_imp_dyn
cd milc_qcd-7.8.1-mc/ks_imp_dyn
make clean
make
# repeat after failed test
cc -o su3_rmd  \
	control.o gauge_info.o setup.o update_h.o update_u.o ape_smear.o check_unitarity.o d_plaq4.o gaugefix2.o io_lat4.o momentum_twist.o nersc_cksum.o path_product.o project_su3_hit.o reunitarize2.o show_generic_opts.o show_scidac_opts.o layout_hyper_prime.o  field_translation.o field_utilities.o gauge_utilities.o io_detect.o io_helpers.o io_lat_utils.o make_lattice.o ranstuff.o remap_stdio_from_args.o io_ansi.o  com_mpi.o ploop3.o show_generic_ks_md_opts.o fermion_links_from_site.o f_meas.o gauss_smear_ks.o grsource_imp.o naik_eps_utilities.o path_transport.o rephase.o show_generic_ks_opts.o show_hisq_links_opts.o show_hypisq_links_opts.o fermion_links_milc.o fermion_links.o fermion_links_fn_load_milc.o fermion_links_fn_twist_milc.o general_staple.o fn_links_milc.o ks_action_paths.o d_congrad5_two_src.o d_congrad5_fn_milc.o mat_invert.o ks_invert.o d_congrad5_fn.o d_congrad_opt.o report_invert_status.o dslash_fn_dblstore.o ks_multicg.o ks_multicg_offset.o fermion_force_asqtad.o fermion_force_multi.o fermion_force_fn_multi.o show_hisq_force_opts.o show_hypisq_force_opts.o ff_opt.o  gauge_force_imp.o gauge_stuff.o ranmom.o update.o ../libraries/su3.1.a ../libraries/complex.1.a         -lm

module list 2> modules.txt
env > env.txt


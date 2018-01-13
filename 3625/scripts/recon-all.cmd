

#---------------------------------
# New invocation of recon-all Thu Jan 11 18:49:21 UTC 2018 

 mri_convert /home/ubuntu/sMRI/3625.nii /usr/local/freesurfer/subjects/3625/mri/orig/001.mgz 

#--------------------------------------------
#@# MotionCor Thu Jan 11 18:49:29 UTC 2018

 cp /usr/local/freesurfer/subjects/3625/mri/orig/001.mgz /usr/local/freesurfer/subjects/3625/mri/rawavg.mgz 


 mri_convert /usr/local/freesurfer/subjects/3625/mri/rawavg.mgz /usr/local/freesurfer/subjects/3625/mri/orig.mgz --conform 


 mri_add_xform_to_header -c /usr/local/freesurfer/subjects/3625/mri/transforms/talairach.xfm /usr/local/freesurfer/subjects/3625/mri/orig.mgz /usr/local/freesurfer/subjects/3625/mri/orig.mgz 

#--------------------------------------------
#@# Talairach Thu Jan 11 18:49:55 UTC 2018

 mri_nu_correct.mni --no-rescale --i orig.mgz --o orig_nu.mgz --n 1 --proto-iters 1000 --distance 50 


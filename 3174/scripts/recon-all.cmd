

#---------------------------------
# New invocation of recon-all Sun Dec 31 16:40:39 UTC 2017 

 mri_convert /home/ubuntu/sMRI/3174.nii /usr/local/freesurfer/subjects/3174/mri/orig/001.mgz 

#--------------------------------------------
#@# MotionCor Sun Dec 31 16:40:51 UTC 2017

 cp /usr/local/freesurfer/subjects/3174/mri/orig/001.mgz /usr/local/freesurfer/subjects/3174/mri/rawavg.mgz 


 mri_convert /usr/local/freesurfer/subjects/3174/mri/rawavg.mgz /usr/local/freesurfer/subjects/3174/mri/orig.mgz --conform 


 mri_add_xform_to_header -c /usr/local/freesurfer/subjects/3174/mri/transforms/talairach.xfm /usr/local/freesurfer/subjects/3174/mri/orig.mgz /usr/local/freesurfer/subjects/3174/mri/orig.mgz 

#--------------------------------------------
#@# Talairach Sun Dec 31 16:41:16 UTC 2017

 mri_nu_correct.mni --no-rescale --i orig.mgz --o orig_nu.mgz --n 1 --proto-iters 1000 --distance 50 



% First Script at GitHub
%testing
input = 's04_anatomical_iso.img';
[pathstr,fname,ext] = fileparts(input);
if strcmp(pathstr,'')
   pathstr = pwd; 
   
   a+b=1;
end

output = strcat(fname,'.nii');
V=spm_vol(input);
ima=spm_read_vols(V);
V.fname=output;

% save 
currentFolder = pwd;
cd(pathstr);
spm_write_vol(V,ima);
cd(currentFolder);

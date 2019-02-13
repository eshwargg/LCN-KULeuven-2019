
% First Script at GitHub
%testing
input = 's04_anatomical_iso.img';
[pathstr,fname,ext] = fileparts(input);
if strcmp(pathstr,'')
   pathstr = pwd; 
end

output = strcat(fname,'.nii');
V=spm_vol(input);
ima=spm_read_vols(V);
V.fname=output;

disp('hello world');
% save 
currentFolder = pwd;
cd(pathstr);
spm_write_vol(V,ima);
cd(currentFolder);

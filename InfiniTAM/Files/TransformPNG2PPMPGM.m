function TransformPNG2PPMPGM()
    depthSet_png = {};
    rgbSet_png = {};
    total = 19;

    depthFile_pgm_address = '/home/hhg/Documents/myGithub2/InfiniTAM_v2_hhg/InfiniTAM/Files/wajueji/Frames2/';
    rgbFile_ppm_address = '/home/hhg/Documents/myGithub2/InfiniTAM_v2_hhg/InfiniTAM/Files/wajueji/Frames2/';
    
    png_address = '/home/hhg/Documents/myGithub2/InfiniTAM_v2_hhg/InfiniTAM/Files/wajueji/old2/';
    %%process
    for i = 1:total
        %%read png image
        depthFileName_png = [png_address,'d_',int2str(i+181),'.png'];
        rgbFileName_png = [png_address,'c_',int2str(i+181),'.png'];
        depthSet_png(i).data = imread(depthFileName_png);
        rgbSet_png(i).data = imread(rgbFileName_png);
        
        %%transform png into pgm(depth) and ppm(color)
        imwrite(depthSet_png(i).data,[depthFile_pgm_address,int2str(i-1),'.pgm']);
        imwrite(rgbSet_png(i).data,[rgbFile_ppm_address,int2str(i-1),'.ppm']);
    end
    
end

function TransformPNG2PPMPGM()
    depthSet_png = {};
    rgbSet_png = {};
    total = 200;

    depthFile_pgm_address = '/home/hhg/Documents/myGithub2/tool/oni2picture_ed2/tankData/MATLAB/node_seg/output/imageSource/';
    rgbFile_ppm_address = '/home/hhg/Documents/myGithub2/tool/oni2picture_ed2/tankData/MATLAB/node_seg/output/imageSource/';
    
    png_address = '/home/hhg/Documents/myGithub2/tool/oni2picture_ed2/tankData/MATLAB/node_seg/input/Wajueji_2/extractdata_afterDRev/';
    %%process
    for i = 1:total
        %%read png image
        depthFileName_png = [png_address,'d_',int2str(i),'.png'];
        rgbFileName_png = [png_address,'c_',int2str(i),'.png'];
        depthSet_png(i).data = imread(depthFileName_png);
        rgbSet_png(i).data = imread(rgbFileName_png);
        
        %%transform png into pgm(depth) and ppm(color)
        imwrite(depthSet_png(i).data,[depthFile_pgm_address,int2str(i),'.pgm']);
        imwrite(rgbSet_png(i).data,[rgbFile_ppm_address,int2str(i),'.ppm']);
    end
    
end

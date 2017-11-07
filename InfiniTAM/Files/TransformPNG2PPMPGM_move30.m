%% move the former 30 frames into trash
function TransformPNG2PPMPGM_move30()
    depthSet_png = {};
    rgbSet_png = {};
    total = 299;
    depthFile_pgm_address = '/home/hhg/Downloads/dataSet/depthSet2_pgm/';
    rgbFile_ppm_address = '/home/hhg/Downloads/dataSet/colorSet2_ppm/';
    trash_num = 30;
    
    %process
    for i = trash_num:total
        %read png image
        depthFileName_png = ['c_depth_output',int2str(i),'.png'];
        rgbFileName_png = ['c_color',int2str(i),'.png'];
        depthSet_png(i).data = imread(['/home/hhg/Downloads/dataSet/resultPicture2/',depthFileName_png]);
        rgbSet_png(i).data = imread(['/home/hhg/Downloads/dataSet/resultPicture2/',rgbFileName_png]);
        
        %transform png into pgm(depth) and ppm(color)
        imwrite(depthSet_png(i).data,[depthFile_pgm_address,int2str(i-trash_num),'.pgm']);
        imwrite(rgbSet_png(i).data,[rgbFile_ppm_address,int2str(i-trash_num),'.ppm']);
    end
    
end

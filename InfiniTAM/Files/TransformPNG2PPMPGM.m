function TransformPNG2PPMPGM()
    depthSet_png = {};
    rgbSet_png = {};
    total = 24;

    depthFile_pgm_address = '/home/hhg/Downloads/dataSet/Wajueji_1/processedData/depthSet_pgm/';
    rgbFile_ppm_address = '/home/hhg/Downloads/dataSet/Wajueji_1/processedData/colorSet_ppm/';
    
    %%process
    for i = 1:total
        %%read png image
        depthFileName_png = ['extractedTankData',int2str(i),'.png'];
        rgbFileName_png = ['extractedTankData',int2str(i),'.png'];
        depthSet_png(i).data = imread(['/home/hhg/Downloads/dataSet/Wajueji_1/processedData/depth/extractedTankData/',depthFileName_png]);
        rgbSet_png(i).data = imread(['/home/hhg/Downloads/dataSet/Wajueji_1/processedData/color/extractedTankData/',rgbFileName_png]);
        
        %%transform png into pgm(depth) and ppm(color)
        imwrite(depthSet_png(i).data,[depthFile_pgm_address,int2str(i-1),'.pgm']);
        imwrite(rgbSet_png(i).data,[rgbFile_ppm_address,int2str(i-1),'.ppm']);
    end
    
end
